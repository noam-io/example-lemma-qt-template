//Copyright (c) 2014, IDEO

#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "Lemma.h"

int main(int argc, char *argv[])
{
    int result = 0;

    QGuiApplication app(argc, argv);

        QQuickView view;

        //instantiate lemma with GuestName and desired RoomName (blank string for Free Guest).
        Lemma * lemma = new Lemma(&view, "QtGuest", "");
        lemma->start();

        QUrl mainQml = QUrl(QStringLiteral("qrc:///main.qml"));
        view.setSource( mainQml );

        QObject::connect( (const QObject*) view.engine(), SIGNAL( quit() ), &app, SLOT( quit() ));

        view.show();

        app.quit();
        result = app.exec();

        delete lemma;

    return result;
}
