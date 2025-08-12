import QtQuick
import QtQuick.Shapes

// Logic for drawing corners taken from https://github.com/end-4/dots-hyprland/blob/main/.config/quickshell/ii/common/widgets/RoundCorner.qml
Item {
    id: root

    enum CornerEnum { TopLeft, TopRight, BottomLeft, BottomRight }
    required property var corner

    required property int implicitSize
    required property color colour

    implicitWidth: implicitSize
    implicitHeight: implicitSize

    Shape {
        anchors.fill: parent
        layer.enabled: true
        layer.smooth: true
        preferredRendererType: Shape.CurveRenderer

        ShapePath {
            id: shapePath
            strokeWidth: 0

            fillColor: root.colour
            startX: switch (root.corner) {
                case RoundedCorner.CornerEnum.TopLeft: return 0;
                case RoundedCorner.CornerEnum.TopRight: return root.implicitSize;
                case RoundedCorner.CornerEnum.BottomLeft: return 0;
                case RoundedCorner.CornerEnum.BottomRight: return root.implicitSize;
            }
            startY: switch (root.corner) {
                case RoundedCorner.CornerEnum.TopLeft: return 0;
                case RoundedCorner.CornerEnum.TopRight: return 0;
                case RoundedCorner.CornerEnum.BottomLeft: return root.implicitSize;
                case RoundedCorner.CornerEnum.BottomRight: return root.implicitSize;
            }
            PathAngleArc {
                moveToStart: false
                centerX: root.implicitSize - shapePath.startX
                centerY: root.implicitSize - shapePath.startY
                radiusX: root.implicitSize
                radiusY: root.implicitSize
                startAngle: switch (root.corner) {
                    case RoundedCorner.CornerEnum.TopLeft: return 180;
                    case RoundedCorner.CornerEnum.TopRight: return -90;
                    case RoundedCorner.CornerEnum.BottomLeft: return 90;
                    case RoundedCorner.CornerEnum.BottomRight: return 0;
                }
                sweepAngle: 90
            }
            PathLine {
                x: shapePath.startX
                y: shapePath.startY
            }
        }
    }

}
