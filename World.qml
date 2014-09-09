import QtQuick 2.0

Rectangle {
    id: world
    property real zY:100
    property real zX:100
    property real count: 0
    x: 30
    y: 30
    width: 1200
    height: 600
    color: "#195b6767"
    border.width: 1
    antialiasing: true
    transformOrigin: Item.Center
    border.color: "#00000000"
    focus: true

    Rectangle {

        id: adder
        x: 0
        y: 0
        width: 50
        height: 50
        color: "#00000000"
        z: 499
        onScaleChanged: {
        }
    }

    MouseArea {
        id: mouseArea1
        x: -32
        y: -28
        width: world.width
        height: world.height
        visible: true
        z: 498
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        drag.target: world; drag.axis: Drag.XAndYAxis

        onClicked: {
            count++;

          /*if(rmenu1.tool==1)var newObject1 = Qt.createQmlObject('import QtQuick 2.0; Ttext{}',adder, "kor");
            if(rmenu1.tool==2)var newObject2 = Qt.createQmlObject('import QtQuick 2.0; Timage{}',adder, "kor");
            if(rmenu1.tool==4)var newObject4 = Qt.createQmlObject('import QtQuick 2.0; Shape_bracket{}',adder, "kor");
            if(rmenu1.tool==5)var newObject5 = Qt.createQmlObject('import QtQuick 2.0; Shape_circle{}',adder, "kor");
            if(rmenu1.tool==6)var newObject6 = Qt.createQmlObject('import QtQuick 2.0; Shape_rectangle{}',adder, "kor");
            if(rmenu1.tool==7)var newObject7 = Qt.createQmlObject('import QtQuick 2.0; Shape_rectangle{}',adder, "kor");
            */
            //var newObject = Qt.createQmlObject('import QtQuick 2.0; Web{}',adder, "kor");

            if(rmenu1.tool==1){
                var component = Qt.createComponent("Ttext.qml");
                if (component.status == Component.Ready) {
                    var text = component.createObject(adder);
                    text.x=mouseX
                    text.y=mouseY
                }
            }
            if(rmenu1.tool==2){
                var component2 = Qt.createComponent("Timage.qml");
                if (component2.status == Component.Ready) {
                    var image = component2.createObject(adder);
                    image.x=mouseX
                    image.y=mouseY
                }
            }
            if(rmenu1.tool==4){
                var component4 = Qt.createComponent("Shape_bracket.qml");
                if (component4.status == Component.Ready) {
                    var bracket = component4.createObject(adder);
                    bracket.x=mouseX
                    bracket.y=mouseY
                }
            }
            if(rmenu1.tool==5){
                var component5 = Qt.createComponent("Shape_circle.qml");
                if (component5.status == Component.Ready) {
                    var circle = component5.createObject(adder);
                    circle.x=mouseX
                    circle.y=mouseY
                    component5.destroy();
                }
            }

            if(rmenu1.tool==6){
                var component6 = Qt.createComponent("Shape_rectangle.qml");
                if (component6.status == Component.Ready) {
                    var rectangle = component6.createObject(adder);
                    rectangle.x=mouseX
                    rectangle.y=mouseY
                    /*rectangle= component6.createObject(adder);
                    rectangle.x=11
                    rectangle.y=1
                    rectangle.color="red"
                    console.log(rectangle.rotation)*/
                }
            }

        }

    }

        states: [
            State {
                name: "State1"
                PropertyChanges {
                    target: world
                    height: 800
                    opacity: 0.8
                    scale:2
                    rotation:30
                    x:1000
                    y:1000
                }
            }
        ]
        transitions: [
               Transition {
                   from: "*"
                   to: "*"
                    NumberAnimation {target:world; properties: "x,y,scale,rotation"; easing.type: Easing.InOutQuad; duration: 500 }
               }
           ]

}
