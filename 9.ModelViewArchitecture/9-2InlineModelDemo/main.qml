import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Inline Model Demo")


    ListView {
        id : mListViewId
        anchors.fill: parent
        model : ["January","February","March","April","May","June","July","Aug","Sept","Oct","Nov","Dec"]
        //delegate : delegateId
        delegate: Rectangle {
            id : rectangleId
            width: parent.width
            height: 50
            color: "beige"
            border.color: "yellowgreen"
            radius: 10

            Text {
                id : textId
                anchors.centerIn: parent
                font.pointSize: 20
                text : modelData
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on :"+ modelData)
                }
            }
        }
    }





}
