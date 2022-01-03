import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Frame Demo")

    Frame {
        anchors.centerIn: parent

        ColumnLayout {

            Button {
                text: "Button1"
            }
            Button {
                text: "Button2"
            }
            Button {
                text: "Button3"
            }

        }
    }
}
