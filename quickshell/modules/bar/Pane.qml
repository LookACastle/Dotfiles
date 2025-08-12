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

        Bar {
            id: bar

            screen: scope.modelData
            thickness: scope.modelData.height * 0.02

            anchors {
                top: true
                left: true
                right: true
            }
        }

        Border {
            id: border

            cornerSize: scope.modelData.height * 0.005
            thickness: scope.modelData.height * 0.003
            enabledTop: false
            enabledLeft: false
        }
    }
}
