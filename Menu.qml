import QtQuick 2.0
import QtQuick 2.2
Rectangle {
    id:menu
    width: 1000
    height: 620
    color: "#000000"
    radius: 12
    border.color: "#333333"
    border.width: 5
    opacity: 0.8

    PropertyAnimation { id: animation; target: menu; property: "opacity"; to: 0; duration: 200 }

    Button {
        text: "close"
        scale: 1.2
        rotation: 45
        color1: "red"
        id: button1
        x: 963
        y: 15
        h1:20
        onClicked: {
            animation.start()
           menu.visible=false
        }
    }
    Button {
        text: "save"
        scale: 1.2
        rotation: 0
        color1: "green"
        id: save
        x: 65
        y: 52
        h1:20
    }

    Button {
        text: "saveAs"
        scale: 1.2
        addedCharEnd: -20
        rotation: 0
        color1: "green"
        id: saveAs
        x: 117
        y: 52
        h1:20
    }

    Button {
        text: "EXIT"
        scale: 1.2
        rotation: 0
        color1: "red"
        id: exit
        x: 244
        y: 52
        h1:20
    }

    Text {
        id: text1
        x: 24
        y: 49
        color: "#ffffff"
        text: qsTr("file:")
        font.pixelSize: 12
    }

    Text {
        id: text2
        x: 24
        y: 85
        color: "#ffffff"
        text: qsTr("edit:")
        font.pixelSize: 12
    }

    Button {
        id: undo
        x: 65
        y: 88
        text: "undo"
        h1: 20
        scale: 1.2
        rotation: 0
        color1: "blue"
    }

    Button {
        id: redo
        x: 117
        y: 88
        text: "redo"
        h1: 20
        scale: 1.2
        rotation: 0
        color1: "blue"
    }

    Button {
        id: open
        x: 190
        y: 52
        text: "open"
        h1: 20
        scale: 1.2
        rotation: 0
        color1: "#008000"
    }

    Text {
        id: text3
        x: 24
        y: 118
        color: "#ffffff"
        text: qsTr("page:")
        font.pixelSize: 12
    }

    Button {
        id: save1
        x: 65
        y: 122
        text: "page color"
        color1: "#008055"
        scale: 1.2
        rotation: 0
        h1: 20
        addedCharEnd: 20
    }

    Button {
        id: save2
        x: 210
        y: 122
        text: "background color"
        color1: "#008055"
        scale: 1.2
        addedCharEnd: 20
        rotation: 0
        h1: 20
    }

    Tbutton {
        id: button5
        text: "english"
        z: 8
        h1:27
        color1: "#37354e"
        x: 97
        y: 156
    }
    Text {
        id: text4
        x: 392
        y: 120
        color: "#ffffff"
        text: qsTr("x:")
        font.pixelSize: 12
    }

    Text {
        id: text5
        x: 455
        y: 120
        color: "#ffffff"
        text: qsTr("y:")
        font.pixelSize: 12
    }

    TextField {
        id: textField1
        x: 407
        y: 116
        width: 39
        height: 21
    }

    TextField {
        id: textField2
        x: 469
        y: 116
        width: 40
        height: 21
    }

    Text {
        id: text6
        x: 24
        y: 156
        color: "#ffffff"
        text: qsTr("language:")
        font.pixelSize: 12
    }

    Tbutton {
        id: button6
        x: 146
        y: 156
        text: "chines"
        color1: "#37354e"
        h1: 27
        z: 8
    }

    Tbutton {
        id: button7
        x: 190
        y: 156
        text: "arabic"
        color1: "#37354e"
        h1: 27
        z: 8
    }

    Tbutton {
        id: button8
        x: 235
        y: 156
        text: "french"
        color1: "#37354e"
        h1: 27
        z: 8
    }

    Tbutton {
        id: button9
        x: 281
        y: 156
        text: "german"
        color1: "#37354e"
        h1: 27
        z: 8
    }

    Tbutton {
        id: button10
        x: 327
        y: 156
        text: "arabic"
        color1: "#37354e"
        h1: 27
        z: 8
    }

    Tbutton {
        id: button11
        x: 374
        y: 156
        text: "persian"
        color1: "#37354e"
        h1: 27
        z: 8
    }

}
