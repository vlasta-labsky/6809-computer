extern "C"
{
    #include <urjtag/urjtag.h>
}

#include <QDebug>

#include "hexfile.h"

QHash<QString, QString> pins;

urj_part_t *p;
urj_chain_t *chain;

void initPins()
{
    pins["A0"] = "PB01_03";
    pins["A1"] = "PB01_02";
    pins["A2"] = "PB03_16";
    pins["A3"] = "PB03_14";
    pins["A4"] = "PB03_11";
    pins["A5"] = "PB03_09";
    pins["A6"] = "PB03_13";
    pins["A7"] = "PB03_05";
    pins["A8"] = "PB01_01";
    pins["A9"] = "PB01_04";
    pins["A10"] = "PB01_05";
    pins["A11"] = "PB01_07";
    pins["A12"] = "PB01_08";
    pins["A13"] = "PB01_09";
    pins["A14"] = "PB01_10";
    pins["A15"] = "PB01_11";

    pins["D0"] = "PB00_10";
    pins["D1"] = "PB00_08";
    pins["D2"] = "PB00_03";
    pins["D3"] = "PB00_02";
    pins["D4"] = "PB00_07";
    pins["D5"] = "PB00_05";
    pins["D6"] = "PB00_04";
    pins["D7"] = "PB00_01";

    pins["R"] = "PB03_03";
    pins["W"] = "PB03_10";
    pins["ROM"] = "PB03_02";
    pins["RAM"] = "PB03_07";

    pins["HALT"] = "PB00_09";
    pins["RESET"] = "PB00_13";
}

int setPin(QString pin, bool dir, bool data)
{
    if(!pins.contains(pin))
    {
        qDebug() << "pin not found" << pin;
        return 0;
    }

//    qDebug() << "# set pin" << pin << dir << data;

    pin = pins[pin];

    urj_part_signal_t *s = urj_part_find_signal (p, pin.toLocal8Bit().data());
    if (!s)
    {
        qDebug() << "signal not found";
        return 0;
    }

    if(urj_part_set_signal (p, s, dir, data) != URJ_STATUS_OK)
    {
        qDebug() << "set signal failed";
        return 0;
    }

}

int getPin(QString pin)
{
    if(!pins.contains(pin))
    {
        qDebug() << "pin not found" << pin;
        return 0;
    }

    QString spin = pins[pin];

    urj_part_signal_t *s = urj_part_find_signal (p, spin.toLocal8Bit().data());
    if (!s)
    {
        qDebug() << "signal not found";
        return 0;
    }

    auto val = !!urj_part_get_signal (p, s);

    //qDebug() << "# get pin" << pin << val;

    return val;
}

void syncJtag()
{
    urj_tap_chain_shift_data_registers(chain, 1);

//    qDebug() << "# sync";
}

void setAddress(uint16_t addr)
{
    for(int a = 0; a < 16; a++)
    {
        setPin(QString("A")+QString::number(a), 1, addr & (1 << a));
    }
}

void setData(uint8_t data)
{
    for(int d = 0; d < 8; d++)
    {
        setPin(QString("D")+QString::number(d), 1, data & (1 << d));
    }
}

void setDataIn()
{
    for(int d = 0; d < 8; d++)
    {
        setPin(QString("D")+QString::number(d), 0, 0);
    }
}

uint8_t readEeprom(uint16_t addr)
{
    setAddress(addr);

    syncJtag();

    setPin("R", 1, 0);
    setPin("ROM", 1, 0);

    syncJtag();
    syncJtag();

    uint8_t val = 0;
    for(int d = 0; d < 8; d++)
    {
        val |= getPin(QString("D")+QString::number(d)) << d;
    }

    setPin("R", 1, 1);
    setPin("ROM", 1, 1);

    syncJtag();

    return val;
}

void writeEeprom(uint16_t addr, uint8_t val)
{
    setAddress(addr);
    setData(val);

    syncJtag();

    setPin("ROM", 1, 0);
    setPin("W", 1, 0);

    syncJtag();

    setPin("W", 1, 1);
    setPin("ROM", 1, 1);

    setDataIn();
}

int main(int argc, char *argv[])
{
    initPins();

    if(argc != 2)
    {
        qCritical("file not specified");
        return 1;
    }

    HEXFile file(argv[1]);
    if(!file.load())
    {
        qDebug() << "load failed";
    }

    chain = urj_tap_chain_alloc();

//    const urj_cable_driver_t *driver = urj_tap_cable_find ("DLC5");
    const urj_cable_driver_t *driver = urj_tap_cable_find ("UsbBlaster");
    if (!driver)
    {
        qDebug() << "cant init cable";
        return 0;
    }

//    char *params[] = {"parallel", "0xc010", nullptr};
    char *params[] = {nullptr};

    int res;
//    if(res = urj_tap_chain_connect (chain, "DLC5", params) != URJ_STATUS_OK)
    if(res = urj_tap_chain_connect (chain, "UsbBlaster", params) != URJ_STATUS_OK)
    {
        qDebug() << "cant connect cable" << res;
        urj_log_error_describe (URJ_LOG_LEVEL_ERROR);

        return 0;
    }

    qDebug() << "cable initialized";

    if (urj_cmd_test_cable (chain) != URJ_STATUS_OK)
    {
        qDebug() << "test cable failed";
        return 0;
    }

    urj_tap_cable_set_frequency (chain->cable, 5000000);

    qDebug() << "cable freq" <<  urj_tap_cable_get_frequency (chain->cable);

    urj_bsdl_set_path (chain, "/projekty/6800/");

    if (urj_tap_detect (chain, 0) != URJ_STATUS_OK)
    {
        qDebug() << "tap detect failed";
        return 0;
    }

    qDebug() << "chip detected";

    p = urj_tap_chain_active_part(chain);
    urj_part_set_instruction(p, "EXTEST");
    urj_tap_chain_shift_instructions(chain);

    setPin("R", 1, 1);
    setPin("W", 1, 1);
    setPin("ROM", 1, 1);

    setPin("RAM", 1, 1);
    setPin("HALT", 1, 0);

    syncJtag();

//    for(int i = 0; i < 8192; i++)
//    {
//        writeEeprom(i, 'k');
//    }

//    for(uint16_t addr = 0; addr < 64; addr++)
//    {
//        uint8_t val = readEeprom(addr);
//        qDebug() << "addr " << QString::number(addr, 16) << "val" << QString::number(val, 16) << (char)val;
//    }

    for(auto r : file.records())
    {
        for(uint8_t offset = 0; offset < r.len; offset++)
        {
            uint16_t addr = r.base + offset;
            uint8_t data = r.data[offset];

            qDebug() << "W " << QString::number(addr, 16) << ":" << QString::number(data, 16);

            writeEeprom(addr, data);
        }
    }

    qDebug() << "EEPROM written";

    bool ok = true;
    for(auto r : file.records())
    {
        for(uint8_t offset = 0; offset < r.len; offset++)
        {
            uint16_t addr = r.base + offset;
            uint8_t data = r.data[offset];

            uint8_t rdata = readEeprom(addr);

            if(data != rdata)
            {
                qDebug() << "verify failed at addr" << QString::number(addr, 16);
                ok = false;
                break;
            }
        }
        if(!ok)
            break;
    }

    if(ok)
    {
        qDebug() << "verify OK";
    }

    setPin("HALT", 1, 1);
    setPin("RESET", 1, 0);

    syncJtag();

    setPin("RESET", 1, 1);

    urj_tap_chain_free (chain);

    return 0;
}
