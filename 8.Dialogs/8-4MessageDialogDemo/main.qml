import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Dialogs 1.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("MessageDialog Demo")


    Button{
        text : "Push Me"
        onClicked: {
            messageDialog.open()
        }
    }


    MessageDialog {
        id: messageDialog
        title: "May I have your attention please"
        text: "It's so cool that you are using Qt Quick."
        standardButtons: StandardButton.Ok | StandardButton.Close
        onAccepted: {
            console.log("And of course you could only agree.")

        }
        onRejected: {
            console.log("You rejected the dialog")
        }


    }
}
