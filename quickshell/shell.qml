//@ pragma UseQApplication

import QtQuick
import Quickshell
import Quickshell.Hyprland
import "./modules/bar/"

ShellRoot {
    id: root

    Loader {
        active: true
        sourceComponent: Pane {}
    }
}
