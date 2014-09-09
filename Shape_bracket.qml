import QtQuick 2.0

Rectangle {

    PropertyAnimation { id: dest; target: timage; property: "scale"; to:0 ;easing.type: Easing.InBack; duration: 800 }
    id:timage
    state: "State2"
    width: 100
    height: 100
    color: "#00000000"
    Button {
        id: button1
        h1:27
        color1: "green"
        text: "ok"
        x: -12
        y: -26
        opacity: 0
        onClicked: {
            cd.visible=false
               timage.state="State2";
            if(button4.text=="YES??"){
             button4.text="DEL"
             button1.text="ok"
            }
        }
    }
Sizebutton2{
        id:wsizebuton
        visible: false
        x: 110
        y:-35
        textsize: "100"
        name: "          w"
        onClickinc: {
         image1.width=sizebuton.textsize
        }
}

Sizebutton2{
        id:hsizebuton
        visible: false
        x: 170
        y:-35
        textsize: "100"
        name: "          h"
        onClickinc: {
         image1.height=sizebuton.textsize
        }
}
    Button {
        id: button4
        opacity: 0
        h1:20
        color1: "red"
        text: "DEL"
        z: 1
        x: 255
        addedCharEnd: -35
        y: -35
        onClicked: {
            if(button4.text=="DEL"){
             button4.text="YES??"
                button1.text="NO!!"
            }else{
                dest.start();
            }
        }

    }

    Rectangle {
        id: image1
        opacity: 1
        height: hsizebuton.textsize
        width: wsizebuton.textsize
        visible: true
        radius: sizebutton2.textsize
        color: "#00000000"
        Rectangle{
            id:i1
            color: "blue"
            height:image1.height
            width: sizebutton1.textsize
            radius: image1.radius
            x:0
            y:0
            z:1
        }
        Rectangle{
            id:i2
            color: "blue"
            height:image1.height
            width: sizebutton1.textsize
            x:image1.width-sizebutton1.textsize
            y:0
            z:1
            radius: image1.radius
        }
        Rectangle{
            id:i3
            color: "blue"
            height:sizebutton1.textsize/3*2
            width: sizebutton1.textsize*2
            x:0
            y:0
            radius: image1.radius
        }   Rectangle{
            id:i4
            color: "blue"
            height:sizebutton1.textsize/3*2
            width: sizebutton1.textsize*2
            x:image1.width-sizebutton1.textsize*2
            y:0
            radius: image1.radius
        }
        Rectangle{
            id:i5
            color: "blue"
            height:sizebutton1.textsize/3*2
            width: sizebutton1.textsize*2
            x:0
            y:image1.height-sizebutton1.textsize/3*2
            radius: image1.radius
        }   Rectangle{
            id:i6
            color: "blue"
            height:sizebutton1.textsize/3*2
            width: sizebutton1.textsize*2
            x:image1.width-sizebutton1.textsize*2
            y:image1.height-sizebutton1.textsize/3*2
            radius: image1.radius
        }

        x: 0
        y: 0
        z: -1
        MouseArea {
            id: mouseArea1
            anchors.fill: parent
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            drag.target: timage; drag.axis: Drag.XAndYAxis
            onClicked: {
                if(timage.state=="State2"){
                    timage.state="State1";
                }else{
                    timage.state="State2";
                }
            }
        }
    }
    Rectangle{

        id:borderrec
        y:-100
        x:30
        width: 105
        height: 65
        color: "#bababa"
        visible: true
        opacity: 1
        radius: 0

        Sizebutton{
            id: sizebutton1
            visible: true
            x: 33
            y: 3
            textsize: "10"
            onClickinc:  {
                sizebutton1.textsize=parsInt(sizebutton1.textsize)-1
            }
            onClickdec: {
                sizebutton1.textsize=parsInt(sizebutton1.textsize)+1
            }

        }
        Sizebutton{
            id: sizebutton2
            visible: true
            x: 33
            y: 35

            textsize: "0"
            onClickinc:  {
                image1.radius=sizebutton2.textsize
                 image1.radius+=1;
            }
            onClickdec:  {
                image1.radius=sizebutton2.textsize
                image1.radius-=1;
            }

        }

        Text {
            x: 3
            y: 3
            width: 41
            height: 22
            text: qsTr("border\nwidth:")
            font.pixelSize: 10
        }

        Text {
            x: 3
            y: 35
            width: 41
            height: 22
            text: qsTr("border\nradius:")
            font.pixelSize: 10
        }
    }


    Button {
        h1:27
        color1: "blue"
        text: "color"
        id: button2
        x: 32
        y: -25
        opacity: 0
        onClicked:{
            if(cd.visible==false){
            cd.visible=true;
                borderrec.opacity=0
          }else{
            cd.visible=false;
            }

        }
    }
    Button {
        h1:27
        color1: "violet"
        text: "border"
        id: button3
        x: 73
        y: -25
        addedCharEnd: -32
        opacity: 0
        onClicked:{
            if(borderrec.opacity==0){
            borderrec.opacity=0.8;
                cd.visible=false
                borderrec.visible=true;
          }else{
            borderrec.opacity=0
            }

        }
    }
    ColorDialogs {
        onColorok: {
            i1.color=cd.col
            i2.color=cd.col
            i3.color=cd.col
            i4.color=cd.col
            i5.color=cd.col
            i6.color=cd.col
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
                target: button1
                opacity: 0.8
            }
            PropertyChanges {
                target: button1
                opacity: 0.8
            }

            PropertyChanges {
                target: hsizebuton
                opacity: 0.8
                visible:true
            }

            PropertyChanges {
                target: wsizebuton
                opacity: 0.8
                visible:true
            }

            PropertyChanges {
                target: button4
                opacity: 0.8
            }


            PropertyChanges {
                target: button3
                opacity: 0.8
            }
            PropertyChanges {
                target: borderrec
                opacity: 0.8
            }
            PropertyChanges {
                target: button2
                opacity: 0.8
            }
            PropertyChanges {
                target: borderrec
                opacity: 0
            }
        },
        State {
            name: "State2"

            PropertyChanges {
                target: borderrec
                opacity: 0
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
