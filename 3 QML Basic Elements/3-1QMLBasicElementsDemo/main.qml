import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("QML Basic Elements Demo")

    Item {
        id : containerItemId
        x : 150 ;y : 50

        width: 600
        height: 300

        Rectangle{
            anchors.fill: parent
            color: "beige"
            border.color: "black"
        }

        Rectangle{
            x : 0
            y : 10
            width : 50
            height: 50
            color: "red"
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Rectangle{
            x : 60
            y : 10
            width : 50
            height: 50
            color: "green"
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Rectangle{
            x : 120
            y : 10
            width : 50
            height: 50
            color: "blue"
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Rectangle{
            x : 180
            y : 10
            width : 50
            height: 50
            color: "magenta"
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Text {
            x : 100
            y : 100
            id : mTextId
            text: "Hello World!"
            //font.family: "Helvetica"; font.pointSize: 13; font.bold: true
            /*
            font {
                family: "Helvetica"
                pointSize: 13
                bold: true
            }
            */
            font {
                family: "Helvetica";pointSize: 13;bold: true
            }

            color: "red"
        }

        Image {
            x : 10
            y : 150
            width: 100
            height: 100
            //Load image from the working directory
            source: "file:LearnQt.png"
        }

        Image {
            x : 150
            y : 150
            width: 100
            height: 100
            //Loading image from the resource file
            source: "images/LearnQt.png"
        }

        Image {
            x : 300
            y : 150
            width: 100
            height: 100
            //Specify the full path to the image
            source: "file:///D:/artwork/LearnQt.png"
        }
        //

        Image {
            x : 450
            y : 150
            width: 100
            height: 100
            //Specify the full path to the image
            source: "http://www.blikoontech.com/wp-content/uploads/2018/04/HttpFileUpload_worked.png"
        }

    }
}
