import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.XmlListModel 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("XmlListModel Demo")

    XmlListModel {
        id : mXmlListModelId
        source: "qrc:///xml/employees.xml"
        //query: "/courses/course"
        query : "//course[2]"
        XmlRole {name : "instructor" ; query : "instructor/string()"}
        XmlRole {name : "year" ; query : "year/number()"}
        XmlRole {name : "coursename" ; query : "coursename/string()"}
        XmlRole {name : "hot" ; query : "@hot/string()"}

        onStatusChanged: {
            var pre = "XmlListModel."
            if (status === XmlListModel.Ready)   print(pre +"Ready -count:", count);
            if (status === XmlListModel.Loading) print(pre+"Loading...");
            if (status === XmlListModel.Error)   print(pre+"Error: ", errorString() );
            if (status === XmlListModel.Null)    prin (pre+"Null");

        }

    }

    ListView{
        id : mListViewId
        anchors.fill: parent
        model : mXmlListModelId
        delegate: Rectangle {
            width : parent.width
            height: 50
            color : "beige"
            Row {
                spacing: 30
                Text {
                    text : instructor
                    font.pointSize: 15
                }
                Text {
                    text : coursename + " (" + year + ")"
                    font.bold: hot==="true"?true:false
                    font.pointSize: 15
                }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on : "+ hot)
                }
            }
        }
    }
}
