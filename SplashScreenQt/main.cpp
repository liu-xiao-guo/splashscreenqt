#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QElapsedTimer>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQuickView view;
    view.setResizeMode(QQuickView::SizeRootObjectToView);

    view.setSource(QUrl(QStringLiteral("qrc:///SplashScreen.qml")));
    view.show();

    QElapsedTimer t;
    t.start();
    while(t.elapsed()<2000)
    {
        QCoreApplication::processEvents();
    }

    view.setSource(QUrl(QStringLiteral("qrc:///Main.qml")));

    view.show();
    return app.exec();
}

