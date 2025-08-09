import QtQuick
import Quickshell
import "components"

Variants {
    model: Quickshell.screens

    function withAlpha(color: color, alpha: real): color {
        return Qt.rgba(color.r, color.g, color.b, alpha);
    }

    Scope {
        id: scope
        required property ShellScreen modelData

        PanelWindow {
            screen: scope.modelData
            id: panel

            anchors {
                top: true
                left: true
                right: true
            }

            implicitHeight: screen.height * 0.025

            Rectangle {
                id: bar
                anchors.fill: parent
                color: withAlpha("#1a1a1a", 1)

                Workspaces {
                    id: workspaces

                    anchors {
                        left: parent.left
                        verticalCenter: parent.verticalCenter
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
    }
}
