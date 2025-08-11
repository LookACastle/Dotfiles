pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io
import qs.common

Singleton {
    id: root
    readonly property real baseTransparency: 0.9
    readonly property int normalFontsize: 20
    readonly property string normalFontfamily: "M PLUS 1 CODE"

    // A lot of the colour logic has been taken from
    // https://github.com/bbedward/DankMaterialShell/blob/master/Common/Colors.qml
    property bool systemThemeGenerationInProgress: false
    property string matugenJson: ""
    property var matugenColours: ({})
    property int colourUpdateTrigger: 0
    property string lastWallpaperTimestamp: ""
    property string wallpaperPath: ""
    property color primary: getMatugenColour("primary", "#42a5f5")
    property color secondary: getMatugenColour("secondary", "#8ab4f8")
    property color tertiary: getMatugenColour("tertiary", "#bb86fc")
    property color tertiaryContainer: getMatugenColour("tertiary_container", "#3700b3")
    property color error: getMatugenColour("error", "#cf6679")
    property color inversePrimary: getMatugenColour("inverse_primary", "#6200ea")
    property color backgroundColour: getMatugenColour("background", "#1a1c1e")
    property color surface: getMatugenColour("surface", "#1a1c1e")
    property color surfaceContainer: getMatugenColour("surface_container", "#1e2023")
    property color surfaceContainerHigh: getMatugenColour("surface_container_high", "#292b2f")
    property color surfaceVariant: getMatugenColour("surface_variant", "#44464f")
    property color surfaceText: getMatugenColour("on_background", "#e3e8ef")
    property color primaryText: getMatugenColour("on_primary", "#ffffff")
    property color surfaceVariantText: getMatugenColour("on_surface_variant", "#c4c7c5")
    property color primaryContainer: getMatugenColour("primary_container", "#1976d2")
    property color surfaceTint: getMatugenColour("surface_tint", "#8ab4f8")
    property color outline: getMatugenColour("outline", "#8e918f")
    property color accentHi: primary
    property color accentLo: secondary

    signal coloursUpdated

    function getMatugenColour(path, fallback) {
        colourUpdateTrigger
        let cur = matugenColours && matugenColours.colors && matugenColours.colors["dark"]
        for (const part of path.split(".")) { if (!cur || typeof cur !== "object" || !(part in cur))
            return fallback

            cur = cur[part]
        }
        return cur || fallback
    }

    function withAlpha(color: color, alpha: real): color {
        return Qt.rgba(color.r, color.g, color.b, alpha);
    }

    Process {
        id: wallpaperChanger
        running: false

        command: ["matugen", "-c", Paths.matugenConfig, "-v", "image", wallpaperPath, "--json", "hex"]

        stdout: StdioCollector {
            id: matugenCollector

            onStreamFinished: {
            const out = matugenCollector.text
            if (!out.length) {
                // Error
                return
            }
            try {
                root.matugenJson = out
                root.matugenColours = JSON.parse(out)
                root.coloursUpdated()
            } catch (e) {
                    ToastService.wallpaperErrorStatus = "error"
                    ToastService.showError("Wallpaper Processing Failed")
                }
            }
        }
    }

    function changeWallpaper(path) {
        root.wallpaperPath = path
        wallpaperChanger.running = true
    }
}
