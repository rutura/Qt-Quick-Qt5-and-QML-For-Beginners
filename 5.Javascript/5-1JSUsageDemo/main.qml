import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("JS Usage Demo")

    Rectangle {
        id : containerRectId
        width : getHeight()  //JS in Function
        height: 100
        color: x > 300 ? "red" : "green" //property binding

        //JS in signal handler
        onXChanged: {
            console.log("Current value of x : "+ x)
        }

        //anchors.centerIn: parent

        //Custom function
        function getHeight()
        {
            return  height * 2
        }

    }

    MouseArea {
        anchors.fill: parent
        drag.target: containerRectId
        drag.axis: Drag.XAxis
        drag.minimumX: 0
        drag.maximumX: parent.width - containerRectId.width

    }
}
