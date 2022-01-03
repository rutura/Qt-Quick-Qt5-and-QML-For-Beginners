import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Dialogs 1.3
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("ColorDialog Demo")

    Column {
        spacing: 20
        anchors.centerIn: parent

        Button{
            text : "Choose Color"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                colorDialogId.open()

            }

        }

        Rectangle{
            width: 200
            height: 200
            id : rectangleId
            border.color: "black"
            border.width: 8
            anchors.horizontalCenter: parent.horizontalCenter
        }

        ColorDialog{
            id : colorDialogId
            title: "Please Choose a Color"
            onAccepted: {
                console.log("User chose color : "+ color)
                rectangleId.color = color

            }
            onCurrentColorChanged: {
                console.log("Current color changed")
            }

            onRejected: {
                console.log("User rejected dialog")
            }
        }
    }
}
