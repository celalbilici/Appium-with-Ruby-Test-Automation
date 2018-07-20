#encoding: UTF-8
# language: tr


Özellik: ziraat mobile otomasyon

  Senaryo: ziraat hesap hareketleri test
    Diyelim ki ziraat mobil uygulaması android bir cihaz uzerinden acılmış olsun
      | platformName    | Android                                                               |
      | platformVersion | 7.0                                                                  |
      | deviceName      | HB0SVZ81                                                           |
      | appPackage      | com.ziraat.ziraatmobile.beta                                          |
      | app             | C:\Users\lenovo\Desktop\Ziraat Mobil_com.ziraat.ziraatmobile.beta.apk |
      | appActivity     | com.veripark.ziraatmobile.screens.splash.activities.SplashActivity    |
    Ve uygulama izni verilir ve "Giriş Yap" butonuna tıklanır
    Ve uygulamaya aşağıdaki bilgilerle giriş yapılır
      | customerNo | 86179365 |
      | password1  | 13579    |
      | password2  | 1234ab   |
    Ve menu ikonuna tıklanır
    Ve "Hesaplarım" sekmesine tıklanır
    Ve "Tüm Hesaplarım" sekmesine tıklanır
    Ve "BAKIRKÖY - 5002" hesabı seçilir
    Ve "Hesap Hareketleri" ne tıklanır
    Ve "01 Haziran 2018" ile "01 Temmuz 2018" tarihleri arası filtrelenir
    Ve "0" ile "2000" arası tutar filtrelenir
    Ve işlem tipi "Tümü" seçilir
    Ve "FİLTRELE" butonuna tıklanır
    Ve geri dönmek için "Yukarı git" butonuna tıklanır
    Ve geri dönmek için "Yukarı git" butonuna tıklanır
    Ve geri dönmek için "Yukarı git" butonuna tıklanır
    Ve geri dönmek için "Yukarı git" butonuna tıklanır
    Ve uygulama sonlandırılır
  Senaryo: ziraat virman
    Diyelim ki ziraat mobil uygulaması android bir cihaz uzerinden acılmış olsun
      | platformName    | Android                                                               |
      | platformVersion | 7.0                                                                 |
      | deviceName      | HB0SVZ81                                                          |
      | appPackage      | com.ziraat.ziraatmobile.beta                                          |
      | app             | C:\Users\lenovo\Desktop\Ziraat Mobil_com.ziraat.ziraatmobile.beta.apk |
      | appActivity     | com.veripark.ziraatmobile.screens.splash.activities.SplashActivity    |
    Ve uygulama izni verilir ve "Giriş Yap" butonuna tıklanır
    Ve uygulamaya aşağıdaki bilgilerle giriş yapılır
      | customerNo | 86179365 |
      | password1  | 13579    |
      | password2  | 1234ab   |
    Ve menu ikonuna tıklanır
    Ve "Para Transferleri" sekmesine tıklanır
    Ve "Hesaplarım Arası Transfer (Virman)" sekmesine tıklanır
    Ve "BAKIRKÖY - 5005" hesabı seçilir
    Ve "BAKIRKÖY - 5002" hesabı seçilir
    Ve aktarılacak tutar alanına "1500" yazılır
    Ve işlem onaylanır
    #Ve dekont için "cbilici@ziraatteknoloji.com" mail adresi seçilir

  Senaryo: ziraat kredi karti borc odeme
    Diyelim ki ziraat mobil uygulaması android bir cihaz uzerinden acılmış olsun
      | platformName    | Android                                                               |
      | platformVersion | 7.0                                                                   |
      | deviceName      | HB0SVZ81                                                              |
      | appPackage      | com.ziraat.ziraatmobile.beta                                          |
      | app             | C:\Users\lenovo\Desktop\Ziraat Mobil_com.ziraat.ziraatmobile.beta.apk |
      | appActivity     | com.veripark.ziraatmobile.screens.splash.activities.SplashActivity    |
    Ve uygulama izni verilir ve "Giriş Yap" butonuna tıklanır
    Ve uygulamaya aşağıdaki bilgilerle giriş yapılır
      | customerNo | 86179364 |
      | password1  | 13579    |
      | password2  | 1234ab   |
    Ve menu ikonuna tıklanır
    Ve "Kartlarım" sekmesine tıklanır
    Ve "Kredi Kartlarım" sekmesine tıklanır
    Ve "5309 **** **** 0894" nolu kredi kartı seçilir
    Ve "BORÇ ÖDEME" işlemi seçilir
    Ve "TL" türünden hesap seçilip "TL BORÇ ÖDE" seçeneğine tıklanır
    Ve ilgili hesabı seçilir
    Ve tutar alanına "5" yazılır
    Ve işlem onaylanır
    Ve "cbilici@ziraateknoloji.com" mail adresine dekont gönderimi yapılır


  Senaryo: doviz alişveris senaryosu
    Diyelim ki ziraat mobil uygulaması android bir cihaz uzerinden acılmış olsun
      | platformName    | Android                                                               |
      | platformVersion | 7.0                                                                   |
      | deviceName      | HB0SVZ81                                                              |
      | appPackage      | com.ziraat.ziraatmobile.beta                                          |
      | app             | C:\Users\lenovo\Desktop\Ziraat Mobil_com.ziraat.ziraatmobile.beta.apk |
      | appActivity     | com.veripark.ziraatmobile.screens.splash.activities.SplashActivity    |
    Ve uygulama izni verilir ve "Giriş Yap" butonuna tıklanır
    Ve uygulamaya aşağıdaki bilgilerle giriş yapılır
      | customerNo | 86179365 |
      | password1  | 13579    |
      | password2  | 1234ab   |
   # Ve sekmeler arası "" geçiş yapılır
    Ve menu ikonuna tıklanır
    Ve "Hesaplarım" sekmesine tıklanır
    Ve "Tüm Hesaplarım" sekmesine tıklanır
    Ve "BAKIRKÖY - 5003" hesabı seçilir
    Ve üst taraftaki menü sekmesine tıklanır
    Ve "Döviz Alış" sekmesine tıklanır
    Ve "BAKIRKÖY - 5003" hesabı seçilir
    Ve "BAKIRKÖY - 5002" hesabı seçilir
    Ve "100" "TRY" lik döviz alışı için tutar girişi yapılır
    Ve  işlem onaylanır
    Ve "altınyıldızkumasları@gmail.com" mail adresine dekont gönderimi yapılır
    Ve uygulama sonlandırılır
    #Ve sürpriz:)
  Senaryo: Kredi kart nakit avans
    Diyelim ki ziraat mobil uygulaması android bir cihaz uzerinden acılmış olsun
      | platformName    | Android                                                               |
      | platformVersion | 7.0                                                                   |
      | deviceName      | HB0SVZ81                                                              |
      | appPackage      | com.ziraat.ziraatmobile.beta                                          |
      | app             | C:\Users\lenovo\Desktop\Ziraat Mobil_com.ziraat.ziraatmobile.beta.apk |
      | appActivity     | com.veripark.ziraatmobile.screens.splash.activities.SplashActivity    |
    Ve uygulama izni verilir ve "Giriş Yap" butonuna tıklanır
    Ve uygulamaya aşağıdaki bilgilerle giriş yapılır
      | customerNo | 86179364 |
      | password1  | 13579    |
      | password2  | 1234ab   |
   # Ve sekmeler arası "" geçiş yapılır
    Ve menu ikonuna tıklanır
    Ve "Kartlarım" sekmesine tıklanır
    Ve "Kredi Kartlarım" sekmesine tıklanır
    Ve "5309 **** **** 0894" nolu kredi kartı seçilir
    Ve "NAKİT AVANS" işlemi seçilir
    Ve "12" ay "2022" yıl ile "197" cvv2 no kredi kart bilgileri girilir
    Ve "BAKIRKÖY - 5005" hesabı seçilir
    Ve "300" tl tutar girişi yapılır
    Ve nakit avansın  "6"  taksit olması istenir
    Ve onayla butonu ile işlem onaylanır



  Senaryo: doviz satis senaryosu
    Diyelim ki ziraat mobil uygulaması android bir cihaz uzerinden acılmış olsun
      | platformName    | Android                                                               |
      | platformVersion | 7.0                                                                   |
      | deviceName      | HB0SVZ81                                                              |
      | appPackage      | com.ziraat.ziraatmobile.beta                                          |
      | app             | C:\Users\lenovo\Desktop\Ziraat Mobil_com.ziraat.ziraatmobile.beta.apk |
      | appActivity     | com.veripark.ziraatmobile.screens.splash.activities.SplashActivity    |
    Ve uygulama izni verilir ve "Giriş Yap" butonuna tıklanır
    Ve uygulamaya aşağıdaki bilgilerle giriş yapılır
      | customerNo | 86179365 |
      | password1  | 13579    |
      | password2  | 1234ab   |
   # Ve sekmeler arası "" geçiş yapılır
    Ve menu ikonuna tıklanır
    Ve "Hesaplarım" sekmesine tıklanır
    Ve "Tüm Hesaplarım" sekmesine tıklanır
    Ve "BAKIRKÖY - 5003" hesabı seçilir
    Ve üst taraftaki menü sekmesine tıklanır
    Ve "Döviz Satış" sekmesine tıklanır
    Ve "BAKIRKÖY - 5003" hesabı seçilir
    Ve "BAKIRKÖY - 5002" hesabı seçilir
    Ve "100" "USD" lik  tutar girişi yapılır
    Ve  işlem onaylanır
    Ve "altinyildizkumaslari@gmail.com" mail adresine dekont gönderimi yapılır
    Ve uygulama sonlandırılır







    #Ve "Hızlı İşlemler" ile "Varlıklarım" menülerinin yeri değiştirilir


















