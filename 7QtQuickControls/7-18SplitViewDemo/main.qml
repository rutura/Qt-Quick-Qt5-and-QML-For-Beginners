import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.5
import QtQuick.Layouts 1.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("SplitView Demo")


    SplitView {
          anchors.fill: parent
          //orientation: Qt.Horizontal
          orientation: Qt.Vertical

          Rectangle {
              //width: 200
              height: 200
              //Layout.maximumWidth: 400
              Layout.maximumHeight: 400
              color: "lightblue"
              Text {
                  text: "View 1"
                  anchors.centerIn: parent
              }
          }
          Rectangle {
              id: centerItem
//              Layout.minimumWidth: 50
//              Layout.fillWidth: true
              Layout.minimumHeight: 50
              Layout.fillHeight: true
              color: "lightgray"
              Text {
                  text: "View 2"
                  anchors.centerIn: parent
              }
          }
          Rectangle {
              //width: 200
              height: 200
              color: "lightgreen"
              Text {
                  text: "View 3"
                  anchors.centerIn: parent
              }
          }
      }
}
