TEMPLATE = app
TARGET = SplashScreenQt

load(ubuntu-click)

QT += qml quick

SOURCES += main.cpp

RESOURCES += SplashScreenQt.qrc

OTHER_FILES += SplashScreenQt.apparmor \
               SplashScreenQt.desktop \
               SplashScreenQt.png

#specify where the config files are installed to
config_files.path = /SplashScreenQt
config_files.files += $${OTHER_FILES}
message($$config_files.files)
INSTALLS+=config_files

# Default rules for deployment.
target.path = $${UBUNTU_CLICK_BINARY_PATH}
INSTALLS+=target

