import QtQuick 2.0
import Ubuntu.Components 1.1

MainView {
    id: mainView
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "splashscreenqt.liu-xiao-guo"

    width: units.gu(60)
    height: units.gu(85)

    property int timeoutInterval: 2000
    signal timeout

    Page {
        title: i18n.tr("")

        Image {
            id: splashImage
            anchors.fill: parent
            source: "images/splash.jpg"
        }

//        Timer {
//            interval: timeoutInterval; running: true; repeat: false
//            onTriggered: {
//                visible = false
//                mainView.timeout()
//            }
//        }
    }
}
