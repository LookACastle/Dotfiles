import QtQuick
import Quickshell
import Quickshell.Services.UPower

Text {
    id: root

    property bool available: UPower.displayDevice.isLaptopBattery
    property var chargeState: UPower.displayDevice.state
    property bool isCharging: chargeState == UPowerDeviceState.Charging
    property bool isPluggedIn: isCharging || chargeState == UPowerDeviceState.PendingCharge
    property real percentage: UPower.displayDevice.percentage

    visible: available
    text: percentage
    color: "#ffffff"
    font.pixelSize: 20
    font.family: "M PLUS 1 CODE"
}
