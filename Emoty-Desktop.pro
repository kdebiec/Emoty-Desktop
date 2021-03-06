DEFINES += QPM_INIT\\(E\\)=\"E.addImportPath(QStringLiteral(\\\"qrc:/\\\"));\"
include(../qml-material/material.pri)

QT += qml quick
QT += widgets quickwidgets
QT += multimedia

CONFIG += c++11 qrc

TEMPLATE = app
TARGET = Emoty-Desktop

DEPENDPATH *= Emoty-Desktop
INCLUDEPATH *= Emoty-Desktop

#################################### Windows #####################################

win32 {
    DEFINES += WINDOWS_SYS
    #if you want to compile borderless login window
    #just define these variables
    {
        DEFINES += BORDERLESS_LOGIN
        DEFINES += BORDERLESS_MAINWINDOW

        QT += gui-private
        LIBS += -ldwmapi -lgdi32

        HEADERS += \
            Bridge/Windows/qwinview.h \
            Bridge/MainWindow/mainwindow.h \
            Bridge/MainWindow/mainwindowpanel.h \
            Bridge/LoginWindow/QMainPanel.h \
            Bridge/LoginWindow/borderlesswindow.h

        SOURCES += \
            Bridge/Windows/qwinview.cpp \
            Bridge/MainWindow/mainwindow.cpp \
            Bridge/MainWindow/mainwindowpanel.cpp \
            Bridge/LoginWindow/QMainPanel.cpp \
            Bridge/LoginWindow/borderlesswindow.cpp
    }
}

HEADERS += libresapilocalclient.h \
    Util/runstatehelper.h \
    Util/cursorshape.h \
    Util/qquickviewhelper.h \
    Bridge/LoginWindow/loginwindow_main.h \
    Util/screensize.h \
    notifier.h \
    soundnotifier.h

SOURCES += main.cpp \
    libresapilocalclient.cpp \
    Util/runstatehelper.cpp \
    Bridge/LoginWindow/loginwindow_main.cpp \
    notifier.cpp \
    soundnotifier.cpp

RESOURCES += \
    GUI/MainWindow/mainwindow.qrc \
    GUI/LoginWindow/login.qrc \
    Images/images.qrc
