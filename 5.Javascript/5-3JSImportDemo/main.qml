import QtQuick 2.12
import QtQuick.Window 2.12
import "utilities1.js" as Utilities1

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Javascript Import Demo")

    Rectangle {
        width : 300
        height: 100
        color: "yellowgreen"
        anchors.centerIn: parent

        Text {
            text : "Click Me"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
               //console.log("Hello there")
               // Utilities1.greeting()

              //  console.log("Our ages combined yield :" + Utilities1.add(33,17))
                console.log("The difference of 50 and 33 is :"+Utilities1.substract(50,33))
            }

        }
    }

}
