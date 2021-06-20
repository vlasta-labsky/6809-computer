#include "hexfile.h"

#include <QFile>
#include <QTextStream>

#include <QDebug>

bool HEXFile::load()
{
    QFile input(m_filename);

    if(!input.open(QIODevice::ReadOnly))
    {
        qCritical("HEXFile::load cant open file");
        return false;
    }

    QTextStream in(&input);
    while (!in.atEnd())
    {
        QString line = in.readLine();

        if(!line.startsWith(":"))
        {
            qCritical("HEXFile::load invalid file");
            return false;
        }

        bool ok;

        QString typeStr = line.mid(7, 2);
        uint8_t type = typeStr.toInt(&ok, 16);

        if(!ok)
        {
            qCritical("HEXFile::load invalid record type");
            return false;
        }

        if(type == 1) // eof
            break;

        if(type != 0)
        {
            qCritical() << "HEXFile::load unhandled record type" << type;
            return false;
        }


        QString lenStr = line.mid(1, 2);
        uint8_t len = lenStr.toInt(&ok, 16);

        if(!ok)
        {
            qCritical() << "HEXFile::load invalid len" << lenStr;
            return false;
        }

        QString addrStr = line.mid(3, 4);
        uint16_t baseAddr = addrStr.toInt(&ok, 16);

        Record r;
        r.base = baseAddr;
        r.len = len;

        r.data.resize(len);

        for(uint8_t offset = 0; offset < len; offset++)
        {
            QString dataStr = line.mid(9 + 2*offset, 2);
            uint8_t data = dataStr.toInt(&ok, 16);

            if(!ok)
            {
                qCritical() << "HEXFile::load invalid data" << data;
                return false;
            }

            r.data[offset] = data;

            //qDebug() << "len" << len << "addr" << QString::number(addr, 16) << "data" << QString::number(data, 16);
        }

        m_data << r;
    }

    input.close();

    return true;
}
