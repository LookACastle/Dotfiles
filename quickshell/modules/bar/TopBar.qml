import QtQuick
import Quickshell
import "components"
import qs.config

PanelWindow {
    id: root

    required property int thickness
    color: "transparent"
    implicitHeight: thickness

    Rectangle {
        anchors.fill: parent
        color: Qt.alpha(Appearance.backgroundColour, Appearance.baseTransparency)

        Workspaces {
            id: workspaces

            anchors {
                left: parent.left
                verticalCenter: parent.verticalCenter
            }
        }

        Battery {
            id: battery

            anchors {
                right: clock.left
                verticalCenter: parent.verticalCenter
                rightMargin: 16
            }
        }

        Clock {
            id: clock

            anchors {
                right: parent.right
                verticalCenter: parent.verticalCenter
                rightMargin: 4
            }
        }
    }
}
