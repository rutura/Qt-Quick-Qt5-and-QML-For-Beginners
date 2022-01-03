import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("ListView and ListModel Demo")

    ListView {
        id : mListViewId
        anchors.fill: parent
        model : mModelId
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
                text : country + " : " + capital
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on :"+ capital + " : "+ country)
                }
            }
        }
    }


    ListModel {
        id : mModelId
        ListElement {
            country : "Rwanda"; capital : "Kigali"
        }
        ListElement {
            country : "China"; capital : "Beijing"
        }
        ListElement {
            country : "Japan"; capital : "Tokyo"
        }
        ListElement {
            country : "Nigeria"; capital : "Lagos"
        }
        ListElement {
            country : "Ghana"; capital : "Accra"
        }
        ListElement {
            country : "France"; capital : "Paris"
        }
        ListElement {
            country : "India"; capital : "New Delhi"
        }
        ListElement {
            country : "Uganda"; capital : "Kampala"
        }
    }

    /*
    Component {
        id : delegateId
        Rectangle {
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
                text : country + " : " + capital
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on :"+ capital + " : "+ country)
                }
            }
        }
    }
    */

}
