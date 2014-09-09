import QtQuick 2.0
Rectangle {
    id:sizebut
    signal clickinc
    property alias textsize:textField1.text
    property alias cink: button1.pressed
    property alias name: button1.text

    width: 80
    height: 27
    color: "#00000000"

    Button {
        addedCharEnd: -25
        text: "         set"
        color1: "blue"
        id: button1
        x: 16
        y: 12
        width: 32
        h1: 20
        onClicked: sizebut.clickinc()
}

        TextField {
            text: textsize
            id: textField1
            x: 5
            y: 1
            width: 35
            height: 27

        }


}
