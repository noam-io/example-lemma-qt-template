#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "Lemma.h"

int main(int argc, char *argv[])
{
    int result = 0;

    QGuiApplication app(argc, argv);

        QQuickView view;

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
