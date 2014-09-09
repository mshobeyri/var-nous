import QtQuick 2.0
import QtQuick.Dialogs 1.1
import QtQuick.Window 2.0

Rectangle {
    property int si
    property string siname: "      open timeline tools       "
    function deactive(){
        rmenu.state="State1"
        button1.deact=1
        button4.deact=1
        button5.deact=1
        button4.deact=1
        button7.deact=1
        button8.deact=1
        button9.deact=1
        button10.deact=1
        button11.deact=1
        button12.deact=1
        button13.deact=1
        button14.deact=1
        button15.deact=1
    }
    property real tool: 0
    signal menuvisible
    signal timelineadd
    signal nextkey
    signal prevkey

    signal timelinevisible
    id: rmenu
    x: 1380
    y: 0
    width: 250
    height: 800
    color: "#938ca6"
    opacity: 0.8
    z: 1


    MouseArea {
        id: mouseArea3
        x: 576
        y: 196
        width: 100
        height: 100
        opacity: 0
        onEntered: {
            rmenu.state=""
        }
    }

    MouseArea {
        hoverEnabled: true
        id: mouseArea2
        x: -30
        y: 0
        width: 218
        height: 1000
        z: 5
        antialiasing: false
        onEntered: {
            if(rmenu.tool==0)rmenu.state="State1"
            if(rmenu.tool==1)rmenu.state="State2"
            if(rmenu.tool==2)rmenu.state="State3"
            if(rmenu.tool==3)rmenu.state="State4"
            if(rmenu.tool==4)rmenu.state="State5"
            if(rmenu.tool==5)rmenu.state="State6"
            if(rmenu.tool==6)rmenu.state="State7"
            if(rmenu.tool==7)rmenu.state="State8"
            if(rmenu.tool==8)rmenu.state="State9"
            if(rmenu.tool==9)rmenu.state="State10"
            if(rmenu.tool==10)rmenu.state="State11"
            if(rmenu.tool==11)rmenu.state="State12"
        }

        Text {
            id: text2
            x: 427
            y: 72
            color: "#ffffff"
            text: qsTr("image:")
            font.pixelSize: 12
        }
    }

    Rectangle {
        id: rectangle2
        x: 0
        y: 806
        width: 200
        height: 200
        color: "#37354e"
        z: 2

        Button {

            addedCharEnd: -5
            h1: 27
            color1:"#282833"
            text: "Prev"
            id: button3
            x: 100
            y: 13
            width: 90
            height: 30
            onClicked: {prevkey()}
        }

        Button {
            h1:27
            addedCharEnd: -5
            color1:"#282833"
            text: "Next"
        id: button2
        x: 30
        y: 13
        onClicked: {nextkey()}
        }

        Button {
            text: siname
            id: button25
            x: 7
            y: -24
            z: 7
            h1: 30
            color1: "#21344a"
            addedCharEnd: -8
            onClicked: {
                if(si==0){
                    siname=" add this frame and CLOSE! "
                    timelinevisible();
                    si=1

                }else{
                    if(si==1){
                    siname="      open timeline tools       "
                    timelineadd();
                        timelinevisible();
                        si=0
                    }
                }
            }
        }

    }

    Tbutton {
        id: button5
        text: "video"
        z: 8
        h1:27
        color1: "#37354e"
        x: 268
        y: 39
        onClicked: {
        rmenu.deactive();
            rmenu.tool=3
            rmenu.state="State4"
        }
    }

    Tbutton {

        id: button4
        text: "image"
        z: 7
        h1:27
        color1: "#37354e"
        x: 280
        y: 39

        onClicked: {
            rmenu.deactive();
            rmenu.tool=2
            rmenu.state="State3"
        }
    }

    Tbutton {
        id: button1
        text: "text"
        z: 6
        h1:27
        color1: "#37354e"
        x: 285
        y: 39

        onClicked: {
            rmenu.deactive();
            rmenu.tool=1
            rmenu.state="State2"
        }
    }

    Tbutton {
        id: button9
        x: 269
        y: 40
        text: "⬜"
        h1: 27
        color1: "#37354e"
        z: 8

        onClicked: {
        rmenu.deactive();
            rmenu.tool=6
            rmenu.state="State7"
        }
    }

    Tbutton {
        id: button8
        x: 281
        y: 40
        text:  "    ⃝  "
        h1: 27
        color1: "#37354e"
        z: 7

        onClicked: {
        rmenu.deactive();
            rmenu.tool=5
            rmenu.state="State6"
        }
    }

    Tbutton {
        id: button7
        x: 286
        y: 40
        text: "[  ]"
        h1: 27
        color1: "#37354e"
        z: 6

        onClicked: {
        rmenu.deactive();
            rmenu.tool=4
            rmenu.state="State5"
        }
    }

    Text {
        id: text1
        x: 356
        y: 8
        color: "#ffffff"
        text: qsTr("insert:")
        font.pixelSize: 12
    }

    TextField {
        id: textField1
        x: 438
        y: 67
    }


    Tbutton {
        id: button10
        x: 285
        y: 39
        text: "pen"
        h1: 27
        color1: "#37354e"
        z: 6

        onClicked: {
        rmenu.deactive();
        rmenu.tool=7
        }
    }

    Tbutton {
        id: button11
        x: 280
        y: 39
        text: "line"
        h1: 27
        color1: "#37354e"
        z: 7

        onClicked: {
        rmenu.deactive();
            rmenu.tool=8
        }
    }

    Tbutton {
        id: button12
        x: 268
        y: 39
        text: "vector"
        h1: 27
        color1: "#37354e"
        z: 8

        onClicked: {
        rmenu.deactive();
            rmenu.tool=9
        }
    }

    Tbutton {
        id: button13
        x: 288
        y: 42
        text: "shape"
        color1: "#37354e"
        z: 6
        h1: 27
        onClicked: {
        rmenu.deactive();
            rmenu.tool=10
        }
    }

    Tbutton {
        id: button14
        x: 283
        y: 42
        text: "chart"
        color1: "#37354e"
        z: 7
        h1: 27
        onClicked: {
        rmenu.deactive();
            rmenu.tool=11
        }
    }

    Tbutton {
        id: button15
        x: 271
        y: 42
        text: "web"
        color1: "#37354e"
        z: 8
        h1: 27
        onClicked: {
        rmenu.deactive();
            rmenu.tool=12
        }
    }

    Tbutton {
        id: button16
        x: 279
        addedCharEnd: -31
        color1: "#4e8740"
        y: 33
        text: "from doc-html-pdf file"

        z: 7
        h1: 27
    }

    Text {
        id: text3
        x: 295
        y: 237
        color: "#ffffff"
        text: qsTr("theme-sample-text:")
        opacity: 1
        font.pixelSize: 12
    }

    Tbutton {
        id: button19
        x: 459
        y: 268
        text: ""
        addedCharEnd: 70
        h1: 30
        color1: "#2b70bf"
        z: 7
    }

    Tbutton {
        id: button20
        x: 488
        y: 335
        text: ""
        addedCharEnd: 70
        h1: 30
        color1: "#21344a"
        z: 7
    }

    Tbutton {
        id: button21
        x: 472
        y: 301
        text: ""
        addedCharEnd: 70
        h1: 30
        color1: "#4e5d6e"
        z: 7
    }

    Button {
        id: button6
        x: 632
        y: 268
        text: "edit"
        addedCharEnd: -31
        h1: 20
        rotation: 90
        color1: "#4e8740"
    }

    Button {
        id: button17
        x: 632
        y: 301
        text: "edit"
        addedCharEnd: -31
        h1: 20
        rotation: 90
        color1: "#4e8740"
    }

    Button {
        id: button18
        x: 632
        y: 335
        text: "edit"
        addedCharEnd: -31
        h1: 20
        rotation: 90
        color1: "#4e8740"
    }

    Button {

        id: button22
        x: -30
        y: -45
        text: "MENU"
        addedCharEnd: 0
        h1: 27
        color1: "#61406d"
        onClicked: {
            menuvisible();
        }
    }

    Text {
        id: text4
        x: 295
        y: 237
        color: "#ffffff"
        text: qsTr("video addres:")
        font.pixelSize: 12
    }

    TextField {
        id: textField2
        x: 438
        y: 124
    }

    Button {
        id: button23
        x: 607
        y: 275
        text: "☌"
        rotation: 180
        addedCharEnd: -31
        h1: 20
        color1: "#4e8740"
    }

    Button {
        id: button24
        x: 615
        y: 275
        text: "☌"
        rotation: 180
        addedCharEnd: -31
        h1: 20
        color1: "#4e8740"
    }

    Tbutton {
        id: button29
        x: 459
        y: 254
        text: ""
        addedCharEnd: 20
        h1: 55
        color1: "#4e5d6e"
        z: 7
    }

    Tbutton {
        id: button30
        x: 464
        y: 254
        text: ""
        addedCharEnd: 20
        h1: 55
        color1: "#2b70bf"
        z: 7
    }

    Button {
        id: button35
        x: 464
        y: 307
        text: "edit"
        addedCharEnd: -7
        rotation: 0
        h1: 20
        color1: "#4e8740"
    }

    Button {
        id: button36
        x: 464
        y: 313
        text: "edit"
        addedCharEnd: -7
        rotation: 0
        h1: 20
        color1: "#4e8740"
    }

    Text {
        id: text5
        x: 295
        y: 239
        color: "#ffffff"
        text: qsTr("theme-samples:")
        font.pixelSize: 12
    }

    Tbutton {
        id: button31
        x: 453
        y: 254
        text: ""
        addedCharEnd: 20
        h1: 55
        color1: "#4e5d6e"
        z: 7
    }

    Tbutton {
        id: button32
        x: 459
        y: 254
        text: ""
        addedCharEnd: 20
        h1: 55
        color1: "#2b70bf"
        z: 7
    }

    Text {
        id: text6
        x: 295
        y: 239
        color: "#ffffff"
        text: qsTr("theme-samples:")
        font.pixelSize: 12
    }

    Tbutton {
        id: button33
        x: 459
        y: 254
        text: ""
        addedCharEnd: 20
        h1: 55
        color1: "#4e5d6e"
        z: 7
    }

    Tbutton {
        id: button34
        x: 459
        y: 254
        text: ""
        addedCharEnd: 20
        h1: 55
        color1: "#2b70bf"
        z: 7
    }

    Text {
        id: text7
        x: 289
        y: 233
        color: "#ffffff"
        text: qsTr("theme-samples:")
        font.pixelSize: 12
    }



    states: [
        State {
            name: "State1"

        PropertyChanges {
            target: rmenu
            x: 1145
            y: 0
            height: 800
            opacity: 0.8
        }



        PropertyChanges {
            target: mouseArea2
            x: 288
            y: -35
            height: 720
        }

        PropertyChanges {
            target: rectangle2
            x: 0
            y: 664
        }

        PropertyChanges {
            target: mouseArea3
            x: -103
            y: 0
            width: 97
            height: 720
            hoverEnabled: true
            opacity: 1
        }

        PropertyChanges {
            target: button2
            x: 96
            y: 21
        }

        PropertyChanges {
            target: button3
            x: 30
            y: 21
        }

        PropertyChanges {
            target: button1
            x: 29
            y: 61
        }

        PropertyChanges {
            target: button4
            x: 74
            y: 61
        }

        PropertyChanges {
            target: button5
            x: 119
            y: 61
        }

        PropertyChanges {
            target: text1
            x: 10
            y: 33
            color: "#ffffff"
        }


        PropertyChanges {
            target: button9
            x: 119
            y: 93
        }

        PropertyChanges {
            target: button8
            x: 74
            y: 93
        }

        PropertyChanges {
            target: button7
            x: 29
            y: 93
        }

        PropertyChanges {
            target: button10
            x: 29
            y: 125
        }

        PropertyChanges {
            target: button11
            x: 74
            y: 125
        }

        PropertyChanges {
            target: button12
            x: 119
            y: 125
        }

        PropertyChanges {
            target: button13
            x: 29
            y: 157
        }

        PropertyChanges {
            target: button14
            x: 74
            y: 157
        }

        PropertyChanges {
            target: button15
            x: 119
            y: 157
        }

        PropertyChanges {
            target: button16
            x: 30
            y: 191
        }

        PropertyChanges {
            target: button22
            x: 85
            y: 3
        }

        PropertyChanges {
            target: textField1
            x: 319
            y: 264
        }

        PropertyChanges {
            target: text2
            x: 16
            y: 272
            text: qsTr("image adress:")
        }

        PropertyChanges {
            target: textField2
            x: 319
            y: 268
        }


    },
        State {
            name: "State2"
            PropertyChanges {
                target: rmenu
                x: 1145
                y: 0
                height: 800
                opacity: 0.8
            }

            PropertyChanges {
                target: mouseArea2
                x: 288
                y: "-36"
                height: 720
            }

            PropertyChanges {
                target: rectangle2
                x: 0
                y: 664
            }

            PropertyChanges {
                target: mouseArea3
                x: "-103"
                y: 0
                width: 97
                height: 720
                hoverEnabled: true
                opacity: 1
            }

            PropertyChanges {
                target: button2
                x: 96
                y: 21
            }

            PropertyChanges {
                target: button3
                x: 30
                y: 21
            }

            PropertyChanges {
                target: button1
                x: 29
                y: 61
            }

            PropertyChanges {
                target: button4
                x: 74
                y: 61
            }

            PropertyChanges {
                target: button5
                x: 119
                y: 61
            }

            PropertyChanges {
                target: text1
                x: 10
                y: 33
                color: "#ffffff"
            }

            PropertyChanges {
                target: button9
                x: 119
                y: 93
            }

            PropertyChanges {
                target: button8
                x: 74
                y: 93
            }

            PropertyChanges {
                target: button7
                x: 29
                y: 93
            }

            PropertyChanges {
                target: button10
                x: 29
                y: 125
            }

            PropertyChanges {
                target: button11
                x: 74
                y: 125
            }

            PropertyChanges {
                target: button12
                x: 119
                y: 125
            }

            PropertyChanges {
                target: button13
                x: 29
                y: 157
            }

            PropertyChanges {
                target: button14
                x: 74
                y: 157
            }

            PropertyChanges {
                target: button15
                x: 119
                y: 157
            }

            PropertyChanges {
                target: button16
                x: 30
                y: 191
            }

            PropertyChanges {
                target: textField1
                x: 347
                y: 267
            }

            PropertyChanges {
                target: text2
                x: 8
                y: 274
                text: qsTr("image adress:")
            }

            PropertyChanges {
                target: button19
                x: 29
                y: 267
            }

            PropertyChanges {
                target: text3
                x: 10
                y: 235
            }

            PropertyChanges {
                target: button21
                x: 30
                y: 304
            }

            PropertyChanges {
                target: button20
                x: 30
                y: 340
            }

            PropertyChanges {
                target: button6
                x: 146
                y: 267
            }

            PropertyChanges {
                target: button17
                x: 147
                y: 304
            }

            PropertyChanges {
                target: button18
                x: 147
                y: 340
            }

            PropertyChanges {
                target: button22
                x: 85
                y: 3
            }

            PropertyChanges {
                target: textField2
                x: 347
                y: 267
            }
        },
        State {
            name: "State3"
            PropertyChanges {
                target: rmenu
                x: 1145
                y: 0
                height: 800
                opacity: 0.8
            }

            PropertyChanges {
                target: mouseArea2
                x: 288
                y: "-36"
                height: 720
                visible: true
            }

            PropertyChanges {
                target: rectangle2
                x: 0
                y: 664
            }

            PropertyChanges {
                target: mouseArea3
                x: "-103"
                y: 0
                width: 97
                height: 720
                opacity: 1
                hoverEnabled: true
            }

            PropertyChanges {
                target: button2
                x: 96
                y: 21
            }

            PropertyChanges {
                target: button3
                x: 30
                y: 21
            }

            PropertyChanges {
                target: button1
                x: 29
                y: 61
            }

            PropertyChanges {
                target: button4
                x: 74
                y: 61
            }

            PropertyChanges {
                target: button5
                x: 119
                y: 61
            }

            PropertyChanges {
                target: text1
                x: 10
                y: 33
                color: "#ffffff"
            }

            PropertyChanges {
                target: button9
                x: 119
                y: 93
            }

            PropertyChanges {
                target: button8
                x: 74
                y: 93
            }

            PropertyChanges {
                target: button7
                x: 29
                y: 93
            }

            PropertyChanges {
                target: button10
                x: 29
                y: 125
            }

            PropertyChanges {
                target: button11
                x: 74
                y: 125
            }

            PropertyChanges {
                target: button12
                x: 119
                y: 125
            }

            PropertyChanges {
                target: button13
                x: 29
                y: 157
            }

            PropertyChanges {
                target: button14
                x: 74
                y: 157
            }

            PropertyChanges {
                target: button15
                x: 119
                y: 157
            }

            PropertyChanges {
                target: button16
                x: 30
                y: 191
            }

            PropertyChanges {
                target: textField1
                x: 22
                y: 259
            }

            PropertyChanges {
                target: text2
                x: -277
                y: 271
                text: qsTr("image adress:")
            }

            PropertyChanges {
                target: button19
                x: 340
                y: 276
            }

            PropertyChanges {
                target: text3
                x: 325
                y: 243
            }

            PropertyChanges {
                target: button21
                x: 340
                y: 309
            }

            PropertyChanges {
                target: button20
                x: 347
                y: 345
            }

            PropertyChanges {
                target: button6
                x: 462
                y: 276
            }

            PropertyChanges {
                target: button17
                x: 462
                y: 309
            }

            PropertyChanges {
                target: button18
                x: 470
                y: 345
            }

            PropertyChanges {
                target: button22
                x: 85
                y: 3
            }

            PropertyChanges {
                target: textField2
                x: 346
                y: 268
            }

            PropertyChanges {
                target: button23
                x: 134
                y: 275
            }

            PropertyChanges {
                target: button34
                x: 446
                y: 268
            }
        },
        State {
            name: "State4"
            PropertyChanges {
                target: rmenu
                x: 1145
                y: 0
                height: 800
                opacity: 0.8
            }

            PropertyChanges {
                target: mouseArea2
                x: 288
                y: -35
                height: 720
            }

            PropertyChanges {
                target: rectangle2
                x: 0
                y: 664
            }

            PropertyChanges {
                target: mouseArea3
                x: "-103"
                y: 0
                width: 97
                height: 720
                opacity: 1
                hoverEnabled: true
            }

            PropertyChanges {
                target: button2
                x: 96
                y: 21
            }

            PropertyChanges {
                target: button3
                x: 30
                y: 21
            }

            PropertyChanges {
                target: button1
                x: 29
                y: 61
            }

            PropertyChanges {
                target: button4
                x: 74
                y: 61
            }

            PropertyChanges {
                target: button5
                x: 119
                y: 61
            }

            PropertyChanges {
                target: text1
                x: 10
                y: 33
                color: "#ffffff"
            }

            PropertyChanges {
                target: button9
                x: 119
                y: 93
            }

            PropertyChanges {
                target: button8
                x: 74
                y: 93
            }

            PropertyChanges {
                target: button7
                x: 29
                y: 93
            }

            PropertyChanges {
                target: button10
                x: 29
                y: 125
            }

            PropertyChanges {
                target: button11
                x: 74
                y: 125
            }

            PropertyChanges {
                target: button12
                x: 119
                y: 125
            }

            PropertyChanges {
                target: button13
                x: 29
                y: 157
            }

            PropertyChanges {
                target: button14
                x: 74
                y: 157
            }

            PropertyChanges {
                target: button15
                x: 119
                y: 157
            }

            PropertyChanges {
                target: button16
                x: 30
                y: 191
            }

            PropertyChanges {
                target: button22
                x: 85
                y: 3
            }

            PropertyChanges {
                target: textField1
                x: 319
                y: 268
            }

            PropertyChanges {
                target: text2
                x: 16
                y: 276
                text: qsTr("image adress:")
            }

            PropertyChanges {
                target: text3
                x: 312
                y: 233
            }

            PropertyChanges {
                target: text4
                x: 14
                y: 235
            }

            PropertyChanges {
                target: textField2
                x: 22
                y: 259
            }

            PropertyChanges {
                target: button24
                x: 134
            }
        },
        State {
            name: "State5"
            PropertyChanges {
                target: rmenu
                x: 1145
                y: 0
                height: 800
                opacity: 0.8
            }

            PropertyChanges {
                target: mouseArea2
                x: 288
                y: -35
                height: 720
            }

            PropertyChanges {
                target: rectangle2
                x: 0
                y: 664
            }

            PropertyChanges {
                target: mouseArea3
                x: "-103"
                y: 0
                width: 97
                height: 720
                opacity: 1
                hoverEnabled: true
            }

            PropertyChanges {
                target: button2
                x: 96
                y: 21
            }

            PropertyChanges {
                target: button3
                x: 30
                y: 21
            }

            PropertyChanges {
                target: button1
                x: 29
                y: 61
            }

            PropertyChanges {
                target: button4
                x: 74
                y: 61
            }

            PropertyChanges {
                target: button5
                x: 119
                y: 61
            }

            PropertyChanges {
                target: text1
                x: 10
                y: 33
                color: "#ffffff"
            }

            PropertyChanges {
                target: button9
                x: 119
                y: 93
            }

            PropertyChanges {
                target: button8
                x: 74
                y: 93
            }

            PropertyChanges {
                target: button7
                x: 29
                y: 93
            }

            PropertyChanges {
                target: button10
                x: 29
                y: 125
            }

            PropertyChanges {
                target: button11
                x: 74
                y: 125
            }

            PropertyChanges {
                target: button12
                x: 119
                y: 125
            }

            PropertyChanges {
                target: button13
                x: 29
                y: 157
            }

            PropertyChanges {
                target: button14
                x: 74
                y: 157
            }

            PropertyChanges {
                target: button15
                x: 119
                y: 157
            }

            PropertyChanges {
                target: button16
                x: 30
                y: 191
            }

            PropertyChanges {
                target: button22
                x: 85
                y: 3
            }

            PropertyChanges {
                target: textField1
                x: 319
                y: 268
            }

            PropertyChanges {
                target: text2
                x: 16
                y: 276
                text: qsTr("image adress:")
            }

            PropertyChanges {
                target: text3
                x: 312
                y: 233
            }

            PropertyChanges {
                target: text4
                x: 302
                y: 242
            }

            PropertyChanges {
                target: textField2
                x: 319
                y: 268
            }

            PropertyChanges {
                target: button24
                x: 425
                y: 285
            }

            PropertyChanges {
                target: button30
                x: 29
                y: 265
            }

            PropertyChanges {
                target: button35
                x: 32
                y: 324
                rotation: 0
            }

            PropertyChanges {
                target: button29
                x: 96
                y: 265
            }

            PropertyChanges {
                target: button36
                x: 98
                y: 324
                rotation: 0
            }

            PropertyChanges {
                target: text5
                x: 14
                y: 235
            }
        },
        State {
            name: "State6"
            PropertyChanges {
                target: rmenu
                x: 1145
                y: 0
                height: 800
                opacity: 0.8
            }

            PropertyChanges {
                target: mouseArea2
                x: 288
                y: -35
                height: 720
            }

            PropertyChanges {
                target: rectangle2
                x: 0
                y: 664
            }

            PropertyChanges {
                target: mouseArea3
                x: "-103"
                y: 0
                width: 97
                height: 720
                opacity: 1
                hoverEnabled: true
            }

            PropertyChanges {
                target: button2
                x: 96
                y: 21
            }

            PropertyChanges {
                target: button3
                x: 30
                y: 21
            }

            PropertyChanges {
                target: button1
                x: 29
                y: 61
            }

            PropertyChanges {
                target: button4
                x: 74
                y: 61
            }

            PropertyChanges {
                target: button5
                x: 119
                y: 61
            }

            PropertyChanges {
                target: text1
                x: 10
                y: 33
                color: "#ffffff"
            }

            PropertyChanges {
                target: button9
                x: 119
                y: 93
            }

            PropertyChanges {
                target: button8
                x: 74
                y: 93
            }

            PropertyChanges {
                target: button7
                x: 29
                y: 93
            }

            PropertyChanges {
                target: button10
                x: 29
                y: 125
            }

            PropertyChanges {
                target: button11
                x: 74
                y: 125
            }

            PropertyChanges {
                target: button12
                x: 119
                y: 125
            }

            PropertyChanges {
                target: button13
                x: 29
                y: 157
            }

            PropertyChanges {
                target: button14
                x: 74
                y: 157
            }

            PropertyChanges {
                target: button15
                x: 119
                y: 157
            }

            PropertyChanges {
                target: button16
                x: 30
                y: 191
            }

            PropertyChanges {
                target: button22
                x: 85
                y: 3
            }

            PropertyChanges {
                target: textField1
                x: 319
                y: 268
            }

            PropertyChanges {
                target: text2
                x: 16
                y: 276
                text: qsTr("image adress:")
            }

            PropertyChanges {
                target: text3
                x: 312
                y: 233
            }

            PropertyChanges {
                target: text4
                x: 302
                y: 242
            }

            PropertyChanges {
                target: textField2
                x: 319
                y: 268
            }

            PropertyChanges {
                target: button24
                x: 425
                y: 285
            }

            PropertyChanges {
                target: button30
                x: 453
                y: 254
            }

            PropertyChanges {
                target: button35
                x: 32
                y: 324
                rotation: 0
            }

            PropertyChanges {
                target: button29
                x: 453
                y: 254
            }

            PropertyChanges {
                target: button36
                x: 98
                y: 324
                rotation: 0
            }

            PropertyChanges {
                target: text5
                x: 14
                y: 235
            }

            PropertyChanges {
                target: button34
                x: 29
                y: 265
            }

            PropertyChanges {
                target: button33
                x: 96
                y: 265
            }
        },
        State {
            name: "State7"
            PropertyChanges {
                target: rmenu
                x: 1145
                y: 0
                height: 800
                opacity: 0.8
            }

            PropertyChanges {
                target: mouseArea2
                x: 288
                y: -35
                height: 720
            }

            PropertyChanges {
                target: rectangle2
                x: 0
                y: 664
            }

            PropertyChanges {
                target: mouseArea3
                x: "-103"
                y: 0
                width: 97
                height: 720
                opacity: 1
                hoverEnabled: true
            }

            PropertyChanges {
                target: button2
                x: 96
                y: 21
            }

            PropertyChanges {
                target: button3
                x: 30
                y: 21
            }

            PropertyChanges {
                target: button1
                x: 29
                y: 61
            }

            PropertyChanges {
                target: button4
                x: 74
                y: 61
            }

            PropertyChanges {
                target: button5
                x: 119
                y: 61
            }

            PropertyChanges {
                target: text1
                x: 10
                y: 33
                color: "#ffffff"
            }

            PropertyChanges {
                target: button9
                x: 119
                y: 93
            }

            PropertyChanges {
                target: button8
                x: 74
                y: 93
            }

            PropertyChanges {
                target: button7
                x: 29
                y: 93
            }

            PropertyChanges {
                target: button10
                x: 29
                y: 125
            }

            PropertyChanges {
                target: button11
                x: 74
                y: 125
            }

            PropertyChanges {
                target: button12
                x: 119
                y: 125
            }

            PropertyChanges {
                target: button13
                x: 29
                y: 157
            }

            PropertyChanges {
                target: button14
                x: 74
                y: 157
            }

            PropertyChanges {
                target: button15
                x: 119
                y: 157
            }

            PropertyChanges {
                target: button16
                x: 30
                y: 191
            }

            PropertyChanges {
                target: button22
                x: 85
                y: 3
            }

            PropertyChanges {
                target: textField1
                x: 319
                y: 268
            }

            PropertyChanges {
                target: text2
                x: 16
                y: 276
                text: qsTr("image adress:")
            }

            PropertyChanges {
                target: text3
                x: 312
                y: 233
            }

            PropertyChanges {
                target: text4
                x: 302
                y: 242
            }

            PropertyChanges {
                target: textField2
                x: 319
                y: 268
            }

            PropertyChanges {
                target: button24
                x: 425
                y: 285
            }

            PropertyChanges {
                target: button30
                x: 444
                y: 268
            }

            PropertyChanges {
                target: button35
                x: 32
                y: 324
                rotation: 0
            }

            PropertyChanges {
                target: button29
                x: 438
                y: 265
            }

            PropertyChanges {
                target: button36
                x: 98
                y: 324
                rotation: 0
            }

            PropertyChanges {
                target: text5
                x: 14
                y: 235
            }

            PropertyChanges {
                target: button34
                x: 444
                y: 265
            }

            PropertyChanges {
                target: button33
                x: 438
                y: 265
            }

            PropertyChanges {
                target: button32
                x: 29
                y: 265
            }

            PropertyChanges {
                target: button31
                x: 96
                y: 265
            }
        },
        State {
            name: "State8"
            PropertyChanges {
                target: rmenu
                x: 1145
                y: 0
                height: 800
                opacity: 0.8
            }

            PropertyChanges {
                target: mouseArea2
                x: 288
                y: "-35"
                height: 720
            }

            PropertyChanges {
                target: rectangle2
                x: 0
                y: 664
            }

            PropertyChanges {
                target: mouseArea3
                x: "-103"
                y: 0
                width: 97
                height: 720
                opacity: 1
                hoverEnabled: true
            }

            PropertyChanges {
                target: button2
                x: 96
                y: 21
            }

            PropertyChanges {
                target: button3
                x: 30
                y: 21
            }

            PropertyChanges {
                target: button1
                x: 29
                y: 61
            }

            PropertyChanges {
                target: button4
                x: 74
                y: 61
            }

            PropertyChanges {
                target: button5
                x: 119
                y: 61
            }

            PropertyChanges {
                target: text1
                x: 10
                y: 33
                color: "#ffffff"
            }

            PropertyChanges {
                target: button9
                x: 119
                y: 93
            }

            PropertyChanges {
                target: button8
                x: 74
                y: 93
            }

            PropertyChanges {
                target: button7
                x: 29
                y: 93
            }

            PropertyChanges {
                target: button10
                x: 29
                y: 125
            }

            PropertyChanges {
                target: button11
                x: 74
                y: 125
            }

            PropertyChanges {
                target: button12
                x: 119
                y: 125
            }

            PropertyChanges {
                target: button13
                x: 29
                y: 157
            }

            PropertyChanges {
                target: button14
                x: 74
                y: 157
            }

            PropertyChanges {
                target: button15
                x: 119
                y: 157
            }

            PropertyChanges {
                target: button16
                x: 30
                y: 191
            }

            PropertyChanges {
                target: button22
                x: 85
                y: 3
            }

            PropertyChanges {
                target: textField1
                x: 319
                y: 268
            }

            PropertyChanges {
                target: text2
                x: 16
                y: 276
                text: qsTr("image adress:")
            }

            PropertyChanges {
                target: text3
                x: 312
                y: 233
            }

            PropertyChanges {
                target: text4
                x: 302
                y: 242
            }

            PropertyChanges {
                target: textField2
                x: 319
                y: 268
            }

            PropertyChanges {
                target: button24
                x: 425
                y: 285
            }

            PropertyChanges {
                target: button30
                x: 444
                y: 268
            }

            PropertyChanges {
                target: button35
                x: 32
                y: 324
                rotation: 0
            }

            PropertyChanges {
                target: button29
                x: 438
                y: 265
            }

            PropertyChanges {
                target: button36
                x: 98
                y: 324
                rotation: 0
            }

            PropertyChanges {
                target: text5
                x: 14
                y: 235
            }

            PropertyChanges {
                target: button34
                x: 444
                y: 265
            }

            PropertyChanges {
                target: button33
                x: 438
                y: 265
            }

            PropertyChanges {
                target: button32
                x: 29
                y: 265
            }

            PropertyChanges {
                target: button31
                x: 96
                y: 265
            }
        }
]


transitions: [
    Transition {
        from: "*"; to: "*"
        NumberAnimation { properties: "x,y"; easing.type: Easing.InOutQuad; duration: 500 }
    }
]
}
