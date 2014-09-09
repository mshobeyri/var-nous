import QtQuick 2.0

Rectangle {
    id:sizebut
    signal clickinc
    signal clickdec
    property alias textsize:textField1.text
    property alias cink: button1.pressed
    property alias cdek: button2.pressed

    width: 80
    height: 27
    color: "#00000000"

    Button {
        addedCharEnd: -25
        text: "            inC"
        color1: "green"
        id: button1
        x: 9
        y: 10
        width: 32
        h1: 10
        onClicked: sizebut.clickinc()
}

    Button {
        addedCharEnd: -25
        text: "           deC"
        color1: "red"
        id: button2
        x: 9
        y: 21
        width: 30
        h1:10
        onClicked: sizebut.clickdec()
    }

        TextField {
            text: textsize
            id: textField1
            x: 5
            y: 0
            width: 30
            height: 27

        }


}
