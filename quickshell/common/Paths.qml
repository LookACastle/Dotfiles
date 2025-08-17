pragma Singleton

import Quickshell
import QtCore

Singleton {
    id: root

    readonly property string home: StandardPaths.standardLocations(StandardPaths.HomeLocation)[0]

    readonly property string matugenConfig: prependHome("/Dotfiles/matugen/config.toml")

    function prependHome(path) {
        return stripFileProtocol(root.home + path)
    }

    function stripFileProtocol(path) {
        return path.replace("file://", "")
    }
}
