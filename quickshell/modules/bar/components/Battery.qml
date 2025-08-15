import QtQuick
import Quickshell
import Quickshell.Services.UPower
import qs.config

Rectangle {
    id: root

    property bool available: UPower.displayDevice.isLaptopBattery
    property var chargeState: UPower.displayDevice.state
    property bool isCharging: chargeState == UPowerDeviceState.Charging
    property bool isPluggedIn: isCharging || chargeState == UPowerDeviceState.PendingCharge
    property real percentage: UPower.displayDevice.percentage

    function rectangleColour() {
        if (isPluggedIn && !isCharging) {
            return "transparent"
        } else if (percentage < 0.15 && !isCharging) {
            return Appearance.error
        } else if (isCharging) {
            return Appearance.tertiary
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
        color: Appearance.surfaceText
        font.pixelSize: Appearance.normalFontsize
        font.family: Appearance.normalFontfamily
    }
}
