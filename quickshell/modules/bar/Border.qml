import QtQuick
import QtQuick.Effects
import Quickshell
import qs.config
import qs.modules.widgets

Item {
    id: root

    required property int cornerSize
    required property int thickness
    property bool enabledTop: true
    property bool enabledBottom: true
    property bool enabledRight: true
    property bool enabledLeft: true

    PanelWindow {
        id: topBorder
        color: "transparent"
        visible: enabledTop

        anchors {
            top: true
            right: true
            left: true
        }
        implicitHeight: root.thickness

        Rectangle {
            id: topRectangle
            anchors.fill: parent
            color: Qt.alpha(Appearance.backgroundColour, Appearance.baseTransparency)
        }
    }

    PanelWindow {
        id: bottomBorder
        color: "transparent"
        visible: enabledBottom

        anchors {
            bottom: true
            right: true
            left: true
        }

        implicitHeight: root.thickness

        Rectangle {
            id: bottomRectangle
            anchors.fill: parent
            color: Qt.alpha(Appearance.backgroundColour, Appearance.baseTransparency)
        }
    }

    PanelWindow {
        id: rightBorder
        color: "transparent"
        visible: enabledRight

       anchors {
            top: true
            bottom: true
            right: true
        }

        implicitWidth: root.thickness

        Rectangle {
            id: rightRectangle
            anchors.fill: parent
            color: Qt.alpha(Appearance.backgroundColour, Appearance.baseTransparency)
        }
    }

    PanelWindow {
        id: leftBorder
        color: "transparent"
        visible: enabledLeft

        anchors {
            top: true
            bottom: true
            left: true
        }

        implicitWidth: root.thickness

        Rectangle {
            id: leftRectangle
            anchors.fill: parent
            color: Qt.alpha(Appearance.backgroundColour, Appearance.baseTransparency)
        }
    }

    PanelWindow {
        id: topRightCorner
        color: "transparent"
        implicitWidth: cornerSize
        implicitHeight: cornerSize

        anchors {
            top: topRectangle.bottom
            right: rightRectangle.left
        }

        RoundedCorner {
            anchors.fill: parent
            colour: Qt.alpha(Appearance.backgroundColour, Appearance.baseTransparency)
            corner: RoundedCorner.CornerEnum.TopRight
            implicitSize: cornerSize
        }
    }

    PanelWindow {
        id: topLeftCorner
        color: "transparent"
        implicitWidth: cornerSize
        implicitHeight: cornerSize

        anchors {
            top: topRectangle.bottom
            left: leftRectangle.right
        }

        RoundedCorner {
            anchors.fill: parent
            colour: Qt.alpha(Appearance.backgroundColour, Appearance.baseTransparency)
            corner: RoundedCorner.CornerEnum.TopLeft
            implicitSize: cornerSize
        }
    }

    PanelWindow {
        id: bottomRightCorner
        color: "transparent"
        implicitWidth: cornerSize
        implicitHeight: cornerSize

        anchors {
            bottom: bottomRectangle.top
            right: rightRectangle.left
        }

        RoundedCorner {
            anchors.fill: parent
            colour: Qt.alpha(Appearance.backgroundColour, Appearance.baseTransparency)
            corner: RoundedCorner.CornerEnum.BottomRight
            implicitSize: cornerSize
        }
    }

    PanelWindow {
        id: bottomLeftCorner
        color: "transparent"
        implicitWidth: cornerSize
        implicitHeight: cornerSize

        anchors {
            bottom: bottomRectangle.top
            left: leftRectangle.right
        }

        RoundedCorner {
            anchors.fill: parent
            colour: Qt.alpha(Appearance.backgroundColour, Appearance.baseTransparency)
            corner: RoundedCorner.CornerEnum.BottomLeft
            implicitSize: cornerSize
        }
    }
}
