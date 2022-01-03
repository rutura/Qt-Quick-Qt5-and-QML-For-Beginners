import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("GroupBox Demo")

    Column{
        spacing: 10
        anchors.fill: parent

        Label {
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "A GroupBox wrapping around RadioButtons."
        }

        GroupBox{
            title: "Choose bonus"
            anchors.horizontalCenter: parent.horizontalCenter
            Column{

                RadioButton{
                    text : "Coke"
                    onCheckedChanged: {
                        if( checked === true){
                            console.log("Coke button checked")
                        }else{
                            console.log("Coke button is NOT checked")
                        }
                    }
                }
                RadioButton{
                    text : "Green Tea"
                }
                RadioButton{
                    text : "Ice Cream"
                }
            }
        }


        Label {
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "A GroupBox wrapping around CheckBoxes."
        }


        GroupBox{
            title: "Choose Qt supported Desktop Platform"
            anchors.horizontalCenter: parent.horizontalCenter
            Column{

                CheckBox{
                    text : "Windows"
                    onCheckedChanged: {
                        if( checked === true){
                            console.log("Windows button checked")
                        }else{
                            console.log("Windows button is NOT checked")
                        }
                    }
                }
                CheckBox{
                    text : "Mac"
                }
                CheckBox{
                    text : "Linux"
                }
            }
        }
    }
}
