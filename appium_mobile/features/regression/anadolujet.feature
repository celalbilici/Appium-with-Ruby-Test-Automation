#encoding: UTF-8
# language: tr


Özellik: anadolujet mobile otomasyon

  Senaryo: anadolujet test
    Diyelim ki ziraat mobil uygulaması android bir cihaz uzerinden acılmış olsun
      | platformName   | Android        |
      | platformVersion| 7.0       |
      | deviceName     | HB0SVZ81 |
      | appPackage     | com.anadolujet.mobile|
      | app            | C:\Users\lenovo\Desktop\AnadoluJet_com.anadolujet.mobile.apk |
      | appActivity    | com.anadolujet.mobile.ui.MainActivity |
    Ve menü içerisinden "Bilet Al" seçeneğine tıklanır
    Ve "tekyön" seçeneği tıklanır
    Ve bilet için "Nereden" seçeneği tıklanır ve "İstanbul" havalanı seçilir
    Ve bilet için "Nereye" seçeneği tıklanır ve "Adana" havalanı seçilir