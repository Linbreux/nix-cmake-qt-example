import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: "My QML App"

    Connections {
    target: appCore
    function onSendToQml(count) {
      console.log("Message from QML: " + count)
      helloText.text = count
    }
}

    Rectangle {
        anchors.fill: parent
        color: "lightblue"

        Text {
            id: helloText
            anchors.centerIn: parent
            text: "Hello, World!"
            font.pointSize: 24
          }
        Button {
          text:"click me"
          onClicked: appCore.receiveFromQml()
        }
    }
}
