import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Page and TabBar Demo")

    Page {
        id : pageId
        anchors.fill: parent

        header: Rectangle{
            width: parent.width
            height: 50
            color: "red"
        }

        SwipeView{
            id : swipeViewId
            anchors.fill: parent
            currentIndex: tabBarId.currentIndex

            Image{
                source: "http://www.blikoontech.com/wp-content/uploads/2018/06/1.png"
            }

            Image{
                source: "http://www.blikoontech.com/wp-content/uploads/2018/06/2.png"
            }
            Image{
                source: "http://www.blikoontech.com/wp-content/uploads/2018/06/3.png"
            }


        }

        footer: TabBar{
            id : tabBarId
            currentIndex: swipeViewId.currentIndex

            TabButton{
                text : "First"
            }
            TabButton{
                text : "Second"
            }
            TabButton{
                text : "Third"
            }
        }
    }
}
