import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import QtQuick.Effects

Variants {
    model: Quickshell.screens

    Scope {
        id: scope

        required property ShellScreen modelData

        TopBar {
            id: topbar

            screen: scope.modelData
            thickness: scope.modelData.height * 0.02

            anchors {
                top: true
                left: true
                right: true
            }
        }

        LeftBar {
            id: leftbar

            screen: scope.modelData
            thickness: scope.modelData.height * 0.02

            anchors {
                top: true
                bottom: true
                left: true
            }
        }

        Border {
            id: border

            screen: scope.modelData
            cornerSize: scope.modelData.height * 0.005
            thickness: scope.modelData.height * 0.003
            enabledTop: false
            enabledLeft: false
        }
    }
}
