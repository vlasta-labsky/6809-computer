#ifndef HEXFILE_H
#define HEXFILE_H

#include <stdint.h>

#include <QByteArray>
#include <QString>
#include <QList>

class HEXFile
{
public:
    struct Record
    {
        uint16_t base;
        uint8_t len;

        QByteArray data;
    };

    HEXFile(QString filename) : m_filename(filename)
    {
    }

    bool load();

    const QList<Record> &records(){ return m_data; }

protected:
    QString m_filename;

    QList<Record> m_data;
};

#endif // HEXFILE_H
