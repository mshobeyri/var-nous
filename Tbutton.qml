import QtQuick 2.0
import QtQuick.Window 2.1

Item {
id:button1
property real deact: 0
property alias text: text1.text
property alias color1: rectangle1.color
property real h1: rectangle1.color
property real addedCharEnd: width-text1.width
signal clicked
property alias containsMouse: mouseArea.containsMouse
property alias pressed: mouseArea.pressed
onDeactChanged: {
     button1.state="State2"
    deact=false
}
    Rectangle {
        id: rectangle1
        x: -7
        y: -7
        width: text1.width+addedCharEnd+39
        height: button1.h1
        color: button1.color1
        radius: 2
        border.width: 0

        Text {
            anchors.centerIn: parent
            id: text1
            x: 25
            y: 9
            color: "#ffffff"
            text: button1.text
            font.pixelSize: 12
        }
    }
    Rectangle{
     id:shadow
     x:rectangle1.x+5
     y:rectangle1.y+5
     color: "#000000"
     radius: 2
     border.width: 0
     z: -8
     smooth: true
     opacity: 0.07
     width: rectangle1.width
     height: rectangle1.height
    }

    MouseArea {
        hoverEnabled: true
        id: mouseArea

        anchors.fill: rectangle1
        onClicked: {
            button1.clicked()
            button1.state="State1"
        }
    }


    states: [
        State {
            name: "State1"

            PropertyChanges {
                target: rectangle1
                color: "#2e040e"
            }
        }
    ]

    transitions: [

        // When transitioning to 'middleRight' move x,y over a duration of 1 second,
        // with OutBounce easing function.
        Transition {
            from: "*"; to: "State1"
            ColorAnimation { from: button1.color1; to: "#2e040e"; duration: 100 }
        },

        // When transitioning to 'bottomLeft' move x,y over a duration of 2 seconds,
        // with InOutQuad easing function.
        Transition {
            from: "State1"; to: "*"
            ColorAnimation { from: "#2e040e"; to:  button1.color1; duration: 100 }
        }
    // ![0]
    ]

}
