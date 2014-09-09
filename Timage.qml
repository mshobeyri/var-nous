import QtQuick 2.0

Rectangle {
    PropertyAnimation { id: dest; target: timage; property: "scale"; to:0 ;easing.type: Easing.InBack; duration: 800 }
    id:timage
    property var itemScale: 1
    Image {
        id: image1
        x: 0
        y: 0
        z: -1
        source: "brain_icon.png"
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
                   timage.state=="State2"
                }
            }
        }
    }

    state: "State2"
    color: "#00000000"

    Item {
        id: imageites
        //scale: World.scale
    Button {
        id: button1
        h1:27
        color1: "green"
        text: "ok"
        x: -12
        y: -26
        opacity: 0
        onClicked: {
                timage.state="State2";
            if(button4.text=="YES??"){
                   button4.text="DEL"
                   button1.text="ok"
            }
        }
    }
    FileDialogs {
        onFileok: {
            image1.source=button3.cfile[0]
           }
        id: button3
        x: 33
        y: -25
        opacity: 0
    }

    Button {
        id: button4
        opacity: 0
        h1:20
        color1: "red"
        text: "DEL"
        z: 1
        x: 171
        addedCharEnd: -35
        y: -30
        onClicked: {
            if(button4.text=="DEL"){
             button4.text="YES??"
                button1.text="NO!!"
            }else{
                dest.start()
            }
        }

    }


    Sizebutton2 {
        id: sizebutton1
        opacity: 0
        x: 78
        y: -32
        textsize: "100"


        onClickinc:  {
            var temp=image1.height/image1.width
            image1.height = sizebutton1.textsize
            image1.width = temp*image1.height
            temp=image1.height/image1.width
            image1.height = sizebutton1.textsize
            image1.width = temp*image1.height

        }

    }

}

 states: [
        State {
            name: "State1"


            PropertyChanges {
                target: button1
                opacity: 0.8
            }

            PropertyChanges {
                target: button3
                opacity: 0.8
            }

            PropertyChanges {
                target: button4
                opacity: 0.8
            }

            PropertyChanges {
                target: sizebutton1
                opacity: 0.8
            }
        },
        State {
            name: "State2"


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
 ]
}
