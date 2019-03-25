#include <QApplication>
#include <QQmlApplicationEngine>
#include <user.h>
#include <QDebug>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));



    user obj;
    obj.setName("fff");
    qDebug()<<obj.getName();



    return app.exec();
}
