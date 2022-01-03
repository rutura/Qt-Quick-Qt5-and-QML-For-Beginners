import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id : rootId
    visible: true
    width: 640
    height: 480
    title: qsTr("Animations Intro Demo")
    property bool running: false

    Rectangle {
        id : containerRectId
        anchors.fill: parent
        color: "beige"


        Rectangle {
            id : containedRectId
            width: 100
            height: 100
            x : 50
            y : 50
            color: "dodgerblue"

            PropertyAnimation on x {
                to : 530
                duration: 2000
                running: rootId.running
            }

            NumberAnimation on y {
                to : 300
                duration: 2000
                running: rootId.running
            }

            RotationAnimation on rotation {
                to : 600
                duration: 2000
                running: rootId.running
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
               rootId.running = true

            }
            onReleased: {
              rootId.running = false
            }
        }
    }
}
