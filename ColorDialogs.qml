/****************************************************************************
**
** Copyright (C) 2013 Digia Plc and/or its subsidiary(-ies).
** Contact: http://www.qt-project.org/legal
**
** This file is part of the examples of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** You may use this file under the terms of the BSD license as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of Digia Plc and its Subsidiary(-ies) nor the names
**     of its contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.0
import QtQuick.Dialogs 1.0

Rectangle {
    id:cold
    property alias col: colorDialog.currentColor
    signal colorok
    width: 160
    height: 60
    color: "#bababa"
    opacity: 1
    border.width: 0
    SystemPalette { id: palette }
    clip: true

    //! [colordialog]
    ColorDialog {
        id: colorDialog
        visible: false
        //modality: colorDialogModal.checked ? Qt.WindowModal : Qt.NonModal
        title: "Choose a color"
        color:"black"
        showAlphaChannel: true
        onAccepted: {
            rec.color1=colorDialog.currentColor
            colorok()
        }
    }
    //! [colordialog]

    Rectangle {
        id: rectangle1
        x: 8
        y: 44
        width: 13
        height: 13
        color: "#e00a0a"
    }

    Rectangle {
        id: rectangle2
        x: 24
        y: 44
        width: 13
        height: 13
        color: "#211f98"
    }

    Rectangle {
        id: rectangle3
        x: 40
        y: 44
        width: 13
        height: 13
        color: "#b0b600"
    }

    Rectangle {
        id: rectangle4
        x: 56
        y: 44
        width: 13
        height: 13
        color: "#0ae0d4"
    }

    Rectangle {
        id: rectangle5
        x: 72
        y: 44
        width: 13
        height: 13
        color: "#cf0ae0"
    }

    Rectangle {
        id: rectangle6
        x: 88
        y: 44
        width: 13
        height: 13
        color: "#29272f"
    }

    Rectangle {
        id: rectangle7
        x: 104
        y: 44
        width: 13
        height: 13
        color: "#8b7474"
    }

    Rectangle {
        id: rectangle8
        x: 120
        y: 44
        width: 13
        height: 13
        color: "#86df8f"
    }

    Rectangle {
        id: rectangle9
        x: 136
        y: 44
        width: 13
        height: 13
        color: "#7980c3"
    }

    MouseArea {
        onClicked:{
            // rec.color=color
        }
        id: mouseArea1
        x: 72
        y: 44
        width: 13
        height: 13
    }

    MouseArea {
        id: mouseArea2
        x: 88
        y: 44
        width: 13
        height: 13
    }

    MouseArea {
        id: mouseArea3
        x: 104
        y: 44
        width: 13
        height: 13
    }

    MouseArea {
        id: mouseArea4
        x: 120
        y: 44
        width: 13
        height: 13
    }

    MouseArea {
        id: mouseArea5
        x: 136
        y: 44
        width: 13
        height: 13
    }
    Button {
        id: rec
        h1:35
        text: "text"
        addedCharEnd: 0
        x: 12
        y: 11
        color1: colorDialog.color

        onClicked:  {
            colorDialog.open()
        }

    }

    Button {
        id: button1
        h1:17
        color1: "gray"
        text: "shadow"
        addedCharEnd: -20
        x: 84
        y: 10
    }

    Button {
        id: button2
        h1:17
        color1: "#b0b600"
        text: "high-light"
        addedCharEnd: -30
        x: 84
        y: 30
    }

    CheckBox {
        id: checkBox1
        x: 134
        y: 0
    }

    CheckBox {
        id: checkBox2
        x: 134
        y: 20
    }

    /*Rectangle {


    }

*/
}
