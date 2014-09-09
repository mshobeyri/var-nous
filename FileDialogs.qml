import QtQuick 2.0
import QtQuick.Dialogs 1.0
import QtQuick.Window 2.0

    //! [filedialog]

    //! [filedialog]
    Button {
        signal fileok
        property alias cfile: fileDialog.fileUrls
        color1: "violet"
        h1:27
        id: fbut
        text: "browse"
        addedCharEnd: -30
onClicked: {
        fileDialog.visible=true
}
FileDialog {
    id: fileDialog
    visible: false
    selectExisting: true
    selectMultiple: false
    selectFolder: false
    nameFilters: [ "Image files (*.png *.jpg)" ]

    onAccepted: {
        fbut.fileok()

    }
}

}
