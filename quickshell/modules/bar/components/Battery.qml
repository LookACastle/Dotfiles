import QtQuick
import Quickshell
import Quickshell.Services.UPower
import qs.config

Text {
    id: root

    property bool available: UPower.displayDevice.isLaptopBattery
    property var chargeState: UPower.displayDevice.state
    property bool isCharging: chargeState == UPowerDeviceState.Charging
    property bool isPluggedIn: isCharging || chargeState == UPowerDeviceState.PendingCharge
    property real percentage: UPower.displayDevice.percentage

    visible: available
    text: percentage
    color: Appearance.surfaceText
    font.pixelSize: Appearance.normalFontsize
    font.family: Appearance.normalFontfamily
}
