#encoding: UTF-8
# language: tr

  Özellik: Google marketten Mvvmm Life Cycle (To-do app) adli apk icin test senaryoları olusturup otomasyon testlerini yazma,
    farkli cihazlarda da kullanilabilsin diye json yapisini parametrik yapma, yer alan task lari kontrol etme, silme, guncelleme,
    yenilerini ekleme,checkboxlarin  checked yada unchecked mi olduklarini  kontrol etme,istenilen task checked değilse onu isaretleme,
    listede istenilen bir kelimeyi arama. Tum bunlar uygulamanin kullanilabilirligi hakkinda bir fikir olusturacak

     Senaryo: Yapilacaklar listesi olusturma
       Diyelim ki uygulama android bir cihaz uzerinden acılmış olsun
         | platformName   | Android      |
         | platformVersion| 7.0          |
         | deviceName     | R28J613N0QZ  |
         | appPackage     | me.henrytao.mvvmlifecycle |
         | app            | C:\Users\LENOVO\Desktop\MVVM Life Cycle_me.henrytao.mvvmlifecycle.apk |
         | appActivity    | me.henrytao.mvvmlifecycledemo.ui.MainActivity |

       Ve uygulamadaki default gelen tüm tasklardaki chexboxların unchecked oldugu gorulur.
       Ve gorev listesinden "task 2" silinir
       Ve gorev listesinden "task 4" check edilip tekrar unchecked hale getirilir
