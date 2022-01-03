import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Slider Demo")

    Column {
        width: parent.width
        spacing: 20

        Slider {
            anchors.horizontalCenter: parent.horizontalCenter
            from : 1
            to : 100
            value: 40
            onValueChanged: {
                progressBarId.value = value
            }
        }

        ProgressBar {
            anchors.horizontalCenter: parent.horizontalCenter
            id : progressBarId
            from : 1
            to : 100
            value: 40

        }
    }
}
