import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("TextArea Demo")

    Column {
        spacing: 40
        width: parent.width

        Label {
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "TextArea is a multi-line text editor."
        }


        ScrollView{
            id : scrollView
            anchors.horizontalCenter: parent.horizontalCenter
            width: 600
            height: 150
            TextArea {
                id : textAreaId

                background: Rectangle{
                    width: parent.width
                    height: parent.height
                    color : "black"
                }

                color: "white"
                wrapMode: TextArea.Wrap
                placeholderText: "Type in your query"
                //text: "TextArea is a QML element where you can type in multiple lines of text and more and more and more At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat..."

            }

        }

        Button{
            text : "Submit"
             anchors.horizontalCenter: parent.horizontalCenter
             onClicked: {
                 //console.log("The text inside the TextArea is : "+ textAreaId.text)
                 textAreaId.text = textAreaId.text + "sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facili1111"

             }
        }



    }
}
