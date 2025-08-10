import QtQuick
import Quickshell
import "components"
import qs.config

Variants {
    model: Quickshell.screens

    Scope {
        id: scope
        required property ShellScreen modelData

        PanelWindow {
            screen: scope.modelData
            id: panel
            color: "transparent"

            anchors {
                top: true
                left: true
                right: true
            }

            implicitHeight: screen.height * 0.022

            Rectangle {
                id: bar
                anchors.fill: parent
                color: Appearance.withAlpha(Appearance.backgroundColour, Appearance.baseTransparency)

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
    }
}
