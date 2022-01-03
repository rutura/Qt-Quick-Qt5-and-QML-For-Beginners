import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Downloading Http Data")


     //Asynchronously
    function downloadData(url, callback)
    {
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function(){
            //XMLHttpRequest.HEADERS_RECEIVED
            //XMLHttpRequest.DONE
            if ( xhr.readyState === XMLHttpRequest.HEADERS_RECEIVED){
                console.log("HEADERS RECEIVED")
            }else if(xhr.readyState === XMLHttpRequest.DONE ){

                if( xhr.status == 200){
                    console.log("Resource found")
                    callback(xhr.responseText.toString())
                }else{
                    console.log("Resource not found")
                    callback(null)
                }
            }
        }
        //Kick off the download
        xhr.open("GET",url)
        xhr.send()

    }



/*
    //Snynchronously : Not recommended

    function downloadData(url){
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function(){
            //XMLHttpRequest.HEADERS_RECEIVED
            //XMLHttpRequest.DONE
            if ( xhr.readyState === XMLHttpRequest.HEADERS_RECEIVED){
                console.log("HEADERS RECEIVED")
            }else if(xhr.readyState === XMLHttpRequest.DONE ){
                if( xhr.status == 200){
                    //console.log("Got the data , it is : " + xhr.responseText.toString())
                    textAreaId.text = xhr.responseText.toString();
                }else{
                    console.log("Something went wrong")
                }
            }
        }
        //Kick off the download
        xhr.open("GET",url)
        xhr.send()
    }
    */



    TextArea{
        id : textAreaId
        anchors.fill: parent
        textFormat: TextArea.RichText
        text: "Html Data here"
    }

    MouseArea{
        anchors.fill: parent
        onClicked: {
            //Snynchronously : Not recommended
            //downloadData("http://www.icndb.com/")

            //Asynchronously
            downloadData("http://www.icndb.com/", function(response){
                if ( response)
                {
                    textAreaId.text = response

                }else{
                    //null
                    textAreaId.text = "Some error"
                }

            })
        }
    }



}
