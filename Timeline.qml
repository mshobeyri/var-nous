import QtQuick 2.0
import QtQml.Models 2.1
GridView {
    Rectangle {
        id:menu
        x: -10
        y: -45
        width: 1000
        height: 620
        color: "#000000"
        radius: 12
        border.color: "#333333"
        border.width: 5
        opacity: 0.8
        z:-10
}
    Button {

        text: "close"
        scale: 1.2
        rotation: 45
        color1: "red"
        id: button1
        x: 953
        y: -30
        h1:20
        opacity: 0.8
        onClicked: {
            root.visible=false
            closet();
        }
    }
    PropertyAnimation { id: nanimation1; target: world; property: "scale"; to:colorModel.get(corFrame).scale ; duration: 400 }
    PropertyAnimation { id: nanimation2; target: world; property: "x"; to:colorModel.get(corFrame).x ; duration: 400 }
    PropertyAnimation { id: nanimation3; target: world; property: "y"; to:colorModel.get(corFrame).y ; duration: 400 }
    PropertyAnimation { id: nanimation4; target: world; property: "rotation"; to:colorModel.get(corFrame).rotation ; duration: 400 }

    Button {
        id: button25
        x: 802
        y: 534
        text: "add this frame to timeline"
        z: 7
        addedCharEnd: -8
        color1: "#21344a"
        h1: 30
        onClicked: {
            add("blue",world.rotation,world.x,world.y,world.scale)
        }
    }

    signal add(string s,int r,int x,int y,var scale);
    signal nextk();
    signal prevk();
    signal closet();
    property int corFrame: 0

    onAdd: {
        colorModel.insert(colorModel.count, {"color": s ,"rotation":r, "x":x ,"y":y, "scale":scale})
    }
    onNextk: {

        if(corFrame<colorModel.count-1){
        corFrame=corFrame+1;
            nanimation1.complete()
            nanimation2.complete()
            nanimation3.complete()
            nanimation4.complete()
            nanimation1.start()
            nanimation2.start()
            nanimation3.start()
            nanimation4.start()
        }
    }

    onPrevk: {

        if(corFrame>0){
            corFrame=corFrame-1;
            nanimation1.complete()
            nanimation2.complete()
            nanimation3.complete()
            nanimation4.complete()
            nanimation1.start()
            nanimation2.start()
            nanimation3.start()
            nanimation4.start()
           }
    }

    id: root
    width: 320; height: 480
    cellWidth: 80; cellHeight: 80

    displaced: Transition {
        NumberAnimation { properties: "x,y"; easing.type: Easing.OutQuad }
    }
    model: DelegateModel {
        id: visualModel
        model: ListModel {
            id: colorModel
            ListElement{color: "red";rotation:0;scale:1;x:10;y:10}
            ListElement{color: "green";rotation:1;scale:0.8}
            ListElement{color: "blue";rotation:2;scale:0.1}
            ListElement{color: "yellow";rotation:3;scale:0.5}
        }
//! [1]

        delegate: MouseArea {
            id: delegateRoot
            PropertyAnimation { id: animation1; target: world; property: "scale"; to:model.scale ; duration: 400 }
            PropertyAnimation { id: animation2; target: world; property: "x"; to:model.x ; duration: 400 }
            PropertyAnimation { id: animation3; target: world; property: "y"; to:model.y ; duration: 400 }
            PropertyAnimation { id: animation4; target: world; property: "rotation"; to:model.rotation ; duration: 400 }
            property string name: DelegateModel.toString()
            onClicked: {
                animation1.start()
                animation2.start()
                animation3.start()
                animation4.start()
                corFrame=visualIndex
            }

            property int visualIndex: DelegateModel.itemsIndex
            width: 80; height: 80
            drag.target: icon

            Rectangle {
                id: icon
                width: 72; height: 72
                anchors {
                    horizontalCenter: parent.horizontalCenter;
                    verticalCenter: parent.verticalCenter
                }
                color: model.color
                rotation: model.rotation
                scale: model.scale/3
                radius: 3
                Drag.active: delegateRoot.drag.active
                Drag.source: delegateRoot
                Drag.hotSpot.x: 36
                Drag.hotSpot.y: 36

                states: [
                    State {
                        when: icon.Drag.active
                        ParentChange {
                            target: icon
                            parent: root
                        }

                        AnchorChanges {
                            target: icon;
                            anchors.horizontalCenter: undefined;
                            anchors.verticalCenter: undefined
                        }
                    }
                ]
            }

            DropArea {
                anchors { fill: parent; margins: 15 }
                onEntered: visualModel.items.move(drag.source.visualIndex, delegateRoot.visualIndex)
            }
        }

    }
}
