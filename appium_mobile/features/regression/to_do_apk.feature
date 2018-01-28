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
        Ve uygulamanın yan tarafta gizlenmiş bölümde sekmeler varmıdır diye swipe ile açılır ve bakılır
       Ve uygulamadaki default gelen tüm tasklardaki chexboxların unchecked oldugu gorulur.
       Ve gorev listesinden "task 2" silinir
       Ve gorev listesinden "task 4" check edilip tekrar unchecked hale getirilir

       Ve menuden "task 3" başlığı  ve "description 3" açiklama kısmı aşağıdaki yazılıp kaydedilmeden çıkılırsa başlık kısmının ve açıklamanın değişmediği görülür
         | task          | Olu Deniz               |
         | things to do  | Yamac Parasutu yapmak   |

       Ve menuden "task 4" başlığı  ve "description 4" açiklama kısmı aşağıdaki yazılıp başlık kaydedilmeden çıkılırsa başlık kısmının ve açıklamanın değişmediği görülür
         | things to do    | Olu Deniz               |

       Ve menuden "task 1" e girilip başlığı  ve "description 1" açiklama silip hiçbirşey yazılmazsa kaydedilemez

       Ve menuden "task 1" başlığı  ve "description 1" açiklama kısmı aşağıdaki gibi güncellenir
         | task          | Japonya Seyahati           |
         | things to do  | Kiraz Agaclarini Gormek    |

       Ve gorev listesine  "Dogu ekspresi ile Karsa gidin" görevi eklenir
       Ve gorev listesine  "Volkanik bir dagi yakindan izleyin" görevi eklenir
       Ve gorev listesine  "Kuzey isiklarini izleyin" görevi eklenir
       Ve gorev listesine  "Yeni bir dil ogrenin" görevi eklenir
       Ve gorev listesine  "Farkli bir alanda calisin" görevi eklenir
       Ve gorev listesine  "Tutkularinizin pesinden kosun" görevi eklenir
       Ve gorev listesine  "Birisinin hayatini degistirin" görevi eklenir
       Ve gorev listesine  "El-classico yu ispanyada izleyin" görevi eklenir
       Ve gorev listesine  "Barinaktan yada sokaktan bir hayvan sahiplenin" görevi eklenir
       Ve gorev listesine  "Gulun" görevi eklenir
       Ve gorev listesine  "Sevin" görevi eklenir
       Ve gorev listesine  "Olumlu dusunun" görevi eklenir
       Ve gorev listesine  "Bir kere degil" görevi eklenir
       Ve gorev listesine  "Her zaman" görevi eklenir
       Ve sayfayadaki line sayısı arttığından scroll un calışabildiği görülür
       Ve scroll yardımıyla "Olumlu dusunun" gorevi sectirilir
#       Ve scroll yardımıyla "El-classico yu ispanya'da izleyin" gorevi sectirilir
       Ve test bittiğinden apk dan çıkış yapılır















