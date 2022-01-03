import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Dialogs 1.3


Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("FileDialog Demo")

    Column {
        spacing: 20
        anchors.centerIn: parent

        Button{
            text : "Choose File or Folder"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                fileDialogId.open()
            }
        }

        Text {
            id : textId
            text : "Use hasn't chosen yet"
            wrapMode: Text.Wrap
        }

        FileDialog{
            id : fileDialogId
            title: "Choose File or Folder"
            selectFolder: false
            selectMultiple: true

            onAccepted: {
                textId.text = fileUrls[3]
                for ( var i = 0 ; i < fileUrls.length ; i ++)
                {
                    console.log(">>>>> Value "+ i + "is :"+ fileUrls[i])
                }

            }

            onRejected: {

            }
        }
    }
}
