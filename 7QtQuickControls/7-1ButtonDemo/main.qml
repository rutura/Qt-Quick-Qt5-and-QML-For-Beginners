import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Button Demo")

    RowLayout {
        anchors.left: parent.left
        anchors.right: parent.right

        Button {
            id : button1
            text: "Button1"
            Layout.fillWidth: true
            onClicked: {
                console.log("Clicked on button1")
            }
            onDoubleClicked: {
                console.log("Double clicked on button1")
            }
        }

        Button{
            id : button2
            text : "Button2"
            Layout.fillWidth: true
            onClicked: {
                console.log("Clicked on button2")
            }
        }
    }



}
