import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: "My QML App"

    Rectangle {
        anchors.fill: parent
        color: "lightblue"

        Text {
            anchors.centerIn: parent
            text: "Hello, World!"
            font.pointSize: 24
        }
    }
}
