import QtQuick
import Quickshell
import Quickshell.Hyprland
import qs.config

Text {
    id: root

    property string currentTime: ""

    text: currentTime
    color: "#ffffff"
    font.pixelSize: 20
    font.family: "M PLUS 1 CODE"

    Timer {
        interval: 1000 // miliseconds
        running: true
        repeat: true
        onTriggered: {
            var now = new Date()
            clock.currentTime = Qt.formatDateTime(now, "yyyy-MM-dd hh:mm:ss")
        }
    }

    // Initialize
    Component.onCompleted: {
        var now = new Date()
        clock.currentTime = Qt.formatDateTime(now, "yyyy-MM-dd hh:mm:ss")
    }

    MouseArea {
          anchors.fill: parent
          onClicked: {
                Appearance.changeWallpaper("/home/lookacastle/Downloads/vid4.webp")
          }
    }
}
