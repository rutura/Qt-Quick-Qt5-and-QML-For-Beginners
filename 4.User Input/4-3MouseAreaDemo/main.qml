import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("MouseArea Demo")

    Rectangle {
        id : containerRectId
        width : parent.width
        height: 200
        color: "beige"

        Rectangle {
            id : movingRectId
            width: 50
            height: width
            color: "blue"


        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log(mouse.x)
                movingRectId.x =  mouse.x
            }

            onWheel: {
                console.log(" X : "+ wheel.x + " y : "+ wheel.y + " angleData :"+ wheel.angleDelta)
            }

            hoverEnabled: true
            onHoveredChanged: {
                if ( containsMouse === true)
                {
                    containerRectId.color = "red"
                }else {
                    containerRectId.color = "green"
                }

            }
        }

    }


    Rectangle {
        id : dragContaierId
        width : parent.width
        height: 200
        color: "beige"
        y : 250

        Rectangle {
            id : draggableRect
            width: 50
            height: width
            color: "blue"



            onXChanged: {
                console.log("X Coordinate is : "+ x)

            }

        }

        MouseArea{
            anchors.fill : parent
            drag.target: draggableRect
            drag.axis: Drag.XAxis
            drag.minimumX: 0
            drag.maximumX: dragContaierId.width - draggableRect.width

        }


    }
}
