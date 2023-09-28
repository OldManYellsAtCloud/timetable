import QtQuick
import QtQuick.Controls

Item {
    Button {
        id: button
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: 40
        Text {
            anchors.centerIn: parent
            font.pixelSize: 30
            text: qsTr("Back")
            color: "black"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    stackView.pop()
                }
            }
        }
    }

    ListView {
        id: departureList
        //anchors.top: button.bottom
        //anchors.left: root.left
        //anchors.right: root.right
        //anchors.bottom: root.bottom
        height: 500
        width: 100
        model: timetable
        delegate: TimetableDelegate {
            lineNumber: model.linenumber
            directionLabel: model.terminal
            arrivalLabel: model.arrivaltime
            delayLabel: model.delay
            color: "black"
        }
    }
}
