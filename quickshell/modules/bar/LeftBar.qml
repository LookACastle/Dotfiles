import QtQuick
import Quickshell
import "components"
import qs.config

PanelWindow {
    id: root

    required property int thickness
    color: "transparent"
    implicitWidth: thickness

    Rectangle {
        anchors.fill: parent
        color: Qt.alpha(Appearance.backgroundColour, Appearance.baseTransparency)
    }
}
