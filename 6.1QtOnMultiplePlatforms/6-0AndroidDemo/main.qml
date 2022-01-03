import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Android Demo")
    Rectangle {
        color: "red"
        anchors.fill: parent
        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log("Clicked on the rectangle")
            }
        }
    }
}
