import QtQuick 2.0

Rectangle{
    PropertyAnimation { id: dest; target: ttext; property: "scale"; to:0 ;easing.type: Easing.InBack; duration: 800 }
    id:ttext
    state: "State2"
    width: text1.width
    height: text1.height
    color: "#00000000"

    MouseArea {
        id: mouseArea1
        z: 1
        anchors.fill: ttext
        drag.target: ttext; drag.axis: Drag.XAndYAxis
        onClicked: {
            if(ttext.state=="State2"){
                ttext.state="State1";
            }else{
               ttext.state=="State2";
            }
        }

    }

    TextInput {
        id:text1
        font.pointSize: sizebutton1.textsize.toLocaleString()
        x: 0
        y: 0
        text: "Your Text"
        color: "black"
        z:1
    }

    Button {

        h1:27
        color1: "green"
        text: "ok"
        id: button1
        x: 8
        y: -23
        opacity: 0
        onClicked: {
            cd.visible=false;
            text1.font.pointSize= sizebutton1.textsize
            ttext.state="State2"
            if(button4.text=="YES??"){
             button4.text="DEL"
             button1.text="ok"
            }
        }
    }

    Button {
        h1:27
        color1: "blue"
        text: "color"
        id: button2
        x: 28
        y: -25
        opacity: 0
        onClicked:{
            if(cd.visible==false){
            cd.visible=true;
          }else{
            cd.visible=false;
            }

        }
    }

    Button {

        h1:20
        color1: "red"
        text: "DEL"
        id: button4
        x: 200
        addedCharEnd: -35
        y: -35
        opacity: 0
        onClicked: {
            if(button4.text=="DEL"){
             button4.text="YES??"
                button1.text="NO!!"
            }else{
                dest.start()
            }
        }

    }
FontDialogs{
    onFontok: {
        text1.font=button3.cfont
    }

    id: button3
    x:65
    y:-25
    opacity: 0
}
    Sizebutton {
        id: sizebutton1
        onClickdec: {
            var x=text1.font.pointSize
            text1.font.pointSize=x-1
            textsize=text1.font.pointSize
        }
        onClickinc: {
            var x=text1.font.pointSize
            text1.font.pointSize=x+1
            textsize=text1.font.pointSize
        }

        textsize: "30"
        x: 165
        y: -33
        opacity: 0
    }

    ColorDialogs {
        onColorok: {
            text1.color=cd.col
        }

        id:cd
        visible: false
        x:-23
        y:-98

    }

    states: [
        State {
            name: "State1"

            PropertyChanges {
                target: mouseArea1
                x: 0
                y: 0
                hoverEnabled: true
            }

            PropertyChanges {
                target: ttext
                border.color: "#4e4a4a"
                border.width: 1
            }
            PropertyChanges {
                target: text1
                z:10
            }
            PropertyChanges {
                target: mouseArea1
                z:9
                anchors.fill: mainrec
            }

            PropertyChanges {
                target: button1
                x: -16
                y: -25
                opacity: 0.8
            }

            PropertyChanges {
                target: button2
                opacity: 0.8
            }

            PropertyChanges {
                target: button4
                opacity: 0.8
            }


            PropertyChanges {
                target: button3
                x: 70
                y: -25
                opacity: 0.8
            }

            PropertyChanges {
                target: sizebutton1
                x: 108
                y: -32
                opacity: 0.8
            }
        },
        State {
            name: "State2"
            PropertyChanges{
                target: cd
                visible: false
            }

            PropertyChanges {
                target: ttext
                border.width: 0
            }
            PropertyChanges{
                target: text1
                z:0
                focus:false
            }

            PropertyChanges {
                target: button1,button2,button3
                opacity: 0
            }

            PropertyChanges {
                target: mouseArea1
                opacity: 1
                z: 1
                anchors.fill: parent
            }

            PropertyChanges {
                target: button1
                x: -16
                y: -25
            }

            PropertyChanges {
                target: button3
                x: 70
            }

            PropertyChanges {
                target: sizebutton1
                x: 108
                y: -32
            }
        }
    ]

    transitions: [

        // When transitioning to 'middleRight' move x,y over a duration of 1 second,
        // with OutBounce easing function.
        Transition {
            from: "State2"; to: "State1"
            NumberAnimation { properties: "opacity"; easing.type: Easing.InOutQuad; duration: 200 }
        },

        // When transitioning to 'bottomLeft' move x,y over a duration of 2 seconds,
        // with InOutQuad easing function.
        Transition {
            from: "State1"; to: "State2"
            NumberAnimation { properties: "opacity"; easing.type: Easing.InOutQuad; duration: 200 }
        },

        Transition {
            from: "State1"; to: "State2"
            NumberAnimation { properties: "border"; easing.type: Easing.InOutQuad; duration: 200 }
        },

        Transition {
            from: "State2"; to: "State1"
            NumberAnimation { properties: "border"; easing.type: Easing.InOutQuad; duration: 800 }
        }
    // ![0]
    ]
}
