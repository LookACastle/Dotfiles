import QtQuick
import Quickshell
import Quickshell.Services.UPower
import qs.config

Rectangle {
    id: root

    property bool available: UPower.displayDevice.isLaptopBattery
    property var chargeState: UPower.displayDevice.state
    property bool isCharging: chargeState == UPowerDeviceState.Charging
    property bool isFullyCharged: chargeState == UPowerDeviceState.FullyCharged
    property real percentage: UPower.displayDevice.percentage

    function rectangleColour() {
        if (isFullyCharged) {
            return "transparent"
        } else if (percentage < 0.15 && !isCharging) {
            return Appearance.error
        } else if (isCharging) {
            return Appearance.secondary
        }
        return Appearance.primary
    }

    color: rectangleColour()
    height: parent.height
    width: 48

    visible: available

    Text {
        text: qsTr("%1%").arg(Math.round(percentage * 100))

        anchors.centerIn: parent
        color: root.isCharging ? Appearance.primaryText : Appearance.surfaceText
        font.pixelSize: Appearance.normalFontsize
        font.family: Appearance.normalFontfamily
    }
}
