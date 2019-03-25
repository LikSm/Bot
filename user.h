#ifndef USER_H
#define USER_H

#include <QObject>
#include <QString>

class user : public QObject
{
    Q_OBJECT
private:
    QString name;

public:
    explicit user(QObject *parent = 0);

    ~user();
    QString getName(){return name;}
    void setName(QString userName){ name = userName;}

signals:

public slots:

};

#endif // USER_H
