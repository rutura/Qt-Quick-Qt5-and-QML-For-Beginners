import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Repeater Demo")

    Flickable {
        contentHeight: columnId.implicitHeight
        anchors.fill : parent


        Column {
            id : columnId
            anchors.fill: parent
            spacing: 2

            Repeater {

               // model : 10
                model: ["Jan","Feb","March","April","May","June","July","Aug","Sept","Oct","Nov","Dec"]
                delegate : Rectangle {
                    width: parent.width
                    height: 50
                    color: "dodgerblue"
                    Text {
                        anchors.centerIn: parent
                        text: modelData
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            console.log("Clicked on :"+modelData)
                        }
                    }
                }

            }
        }
    }
}
