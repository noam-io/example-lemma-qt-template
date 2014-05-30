TEMPLATE = app

QT += qml quick

SOURCES += main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../lemma-qt/LemmaLib/release/ -lLemmaLib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../lemma-qt/LemmaLib/debug/ -lLemmaLib
else:unix: LIBS += -L$$OUT_PWD/../lemma-qt/LemmaLib/ -lLemmaLib

INCLUDEPATH += $$PWD/../lemma-qt/LemmaLib
DEPENDPATH += $$PWD/../lemma-qt/LemmaLib

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../lemma-qt/LemmaLib/release/libLemmaLib.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../lemma-qt/LemmaLib/debug/libLemmaLib.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../lemma-qt/LemmaLib/release/LemmaLib.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../lemma-qt/LemmaLib/debug/LemmaLib.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../lemma-qt/LemmaLib/libLemmaLib.a
