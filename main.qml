import QtQuick 2.3
import QtQuick.Controls 1.2

ApplicationWindow {
    visible: true
    width: 185
    height: 250
    title: qsTr("Team bot")

    Text {
        id: text1
        x: 22
        y: 60
        width: 142
        height: 29
        text: qsTr("Enter your name:")
        font.italic: true
        font.pixelSize: 17
    }

    Rectangle {
        id: rectangle1
        x: 8
        y: 100
        width: 170
        height: 50
        color: "#f9f8f8"

        TextInput {
            id: textInput1
            x: 14
            y: 10
            width: 142
            height: 28
            objectName: "myTextInput"
            text: qsTr("")
            z: 1
            opacity: 1
            cursorVisible: true
            font.family: "Verdana"
            font.pixelSize: 15
            onChildrenChanged: d();

        }
    }

    Button {
        id: button1
        x: 22
        y: 171
        width: 142
        height: 33
        text: qsTr("Start")
        enabled: false
        tooltip : qsTr("Enter your name")
    }

    function d(){
        if(textInput1.getText())
           button1.enabled = true;
    }

}


