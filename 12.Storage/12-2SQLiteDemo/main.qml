import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.LocalStorage 2.0
import QtQuick.Dialogs 1.2
import "Database.js" as JS

Window {
    id : rootId
    visible: true
    width: 640
    height: 480
    title: qsTr("SQLite Demo")
    property var db ;




    Rectangle{
        id : containedRectId
        anchors.fill: parent
        color: "red"

        MouseArea{
            anchors.fill: parent
            onClicked: {
                colorDialogId.open()

            }

            ColorDialog {
                id: colorDialogId
                title: "Please choose a color"
                onAccepted: {
                    console.log("The new color is : "+ color)
                    containedRectId.color = color
                }
                onRejected: {
                    console.log("Canceled")
                }
            }
        }
    }

    Component.onCompleted: {
        //Read data
        JS.dbInit()
        JS.readData()
    }

    Component.onDestruction: {
        JS.storeData()
    }
}
