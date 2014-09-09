import QtQuick 2.0

Rectangle {
    signal setFucos(int x,int y,var scale);
    onSetFucos: {
        world.x=x
        world.y=y
        world.scale=scal

    }
    id:mainrec
    width: 1320
    height: 720
    color: "#eaeaec"
    MouseArea{
        anchors.fill: mainrec
        onWheel: {

            if (wheel.modifiers & Qt.ControlModifier) {
                world.rotation += wheel.angleDelta.y / 120 * 5;
                if (Math.abs(world.rotation) < 4)
                    world.rotation = 0;
            } else {
                world.rotation += wheel.angleDelta.x / 120;
                if (Math.abs(world.rotation) < 0.6)
                    world.rotation = 0;
                var scaleBefore = world.scale;
                world.scale += world.scale * wheel.angleDelta.y / 120 / 10;
            }
        }

    }


    Menu{
        id:menu
        x:80
        y:30
        z:1000
        visible: false
        opacity: 0
        PropertyAnimation { id: animation; target: menu; property: "opacity"; to: 0.8; duration: 200 }
    }

    Timeline {
        id: timeline1
        x: 90
        y: 75
        z:1000
        width: 574
        height: 480
        opacity: 0
        visible: false
        PropertyAnimation { id: animation2; target: timeline1; property: "opacity"; to: 1; duration: 200 }
        onCloset: {
            rmenu1.si=0
            rmenu1.siname="      open timeline tools       "
        }
    }

Rmenu {
    onNextkey: {
        timeline1.nextk();
    }

    onPrevkey: {
        timeline1.prevk();
    }
        id: rmenu1
        x: 1286
        y: 0
        z: 3
        onMenuvisible: {
            timeline1.visible=false
            timeline1.opacity=0
            menu.visible=true
            animation.start()
        }
        onTimelineadd: {
            menu.visible=false
            menu.opacity=0
            timeline1.visible=true
            animation2.start()
            timeline1.add("blue",world.rotation,world.x,world.y,world.scale)
        }
        onTimelinevisible: {
            if(timeline1.visible==false){timeline1.visible=true} else{timeline1.visible=false}
            menu.visible=false
            menu.opacity=0
            animation2.start()
        }

    }

    World {
        id: world
        x: 20
        y: 20
        width: 1218
        height: 678
        color: "#d7dfe0"
        visible: true
        onScaleChanged: {
        }

    }

    Keys.onPressed: {

            if (event.key == Qt.Key_Right) {
            timeline1.nextk();
            }
            if (event.key == Qt.Key_Left) {
            timeline1.prevk();
            }
           if (event.key == Qt.Key_Plus) {
               world.scale= world.scale + 0.01;
           }
           if (event.key == Qt.Key_Minus) {
               if(world.scale>0.009999999999999247)world.scale= world.scale - 0.01;
           }
           if (event.key == Qt.Key_Backslash) {
               world.rotation= world.rotation - 0.5 ;
           }

           if (event.key == Qt.Key_Slash) {
               world.rotation= world.rotation + 0.5 ;
           }
    }
}


