import QtQuick
import Quickshell
import Quickshell.Hyprland
import qs.config

Row {
    id: root

    function nameWorkspace(workspaceId: string): string {
        const workspaceNames = {
            "1": "一",
            "2": "二",
            "3": "三",
            "4": "四",
            "5": "五",
            "6": "六",
            "7": "七",
            "8": "八",
            "9": "九",
            "10": "十",
            "11": "地",
            "12": "水",
            "13": "火",
            "14": "風",
            "15": "北",
            "16": "南",
            "17": "東",
            "18": "西",
            "19": "空",
            "20": "日",
            "21": "月",
            "22": "星"
        };
        return workspaceNames[workspaceId];
    }

    Repeater {
        model: Hyprland.workspaces

        Rectangle {
            visible: QsWindow.window?.screen.name == modelData.monitor?.name
            width: 24
            height: parent.parent.height
            color: modelData.active ? Appearance.primary : modelData.urgent ? Appearance.error : "transparent"

            MouseArea {
                anchors.fill: parent
                onClicked: Hyprland.dispatch("workspace " + modelData.id)
            }

            Text {
                text: nameWorkspace(modelData.id)
                anchors.centerIn: parent
                color: modelData.active || modelData.urgent ? Appearance.primaryText : Appearance.surfaceText
                font.pixelSize: Appearance.normalFontsize
                font.family: Appearance.normalFontfamily
            }
        }
    }

    Text {
        visible: Hyprland.workspaces.length === 0
        text: "Quickshell detected no hyprland workspaces"
        color: Appearance.surfaceText
        font.pixelSize: Appearance.normalFontsize
        font.family: Appearance.normalFontfamily
    }
}
