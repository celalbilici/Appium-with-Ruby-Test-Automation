#encoding: UTF-8
# language: tr

Özellik: Odev senaryosu

  Senaryo: Yapilacaklar listesi hazirlayalim
    Diyelim ki uygulama açılmış olsun
    O zaman ilgili tasklara ait checkboxların seçilebildiği görülür
    Ve seçili tasklardan "1".sinin unchecked yapılabildiği görülür
    Ve "task 3" silinir
    Ve "task 1" adi ve açiklamasi aşağıdaki gibi güncellenir
      | title       | Beyaz Esya      |
      | description | Buzdolabi Firin |
   Ve listeden "task 2" seçilip title ve description girilip kaydedilmeden çıkılırsa  eklenmek istenen kaydın listede olmadığı görülür
     | title       | Cep Telefonu      |
     | description | Iphone x          |
    Ve  task 5 seçilip title yazılmadan sadece description yazılırsa kaydedilemediği görülür
      | description | Macbook          |
    Ve task 5 de title ve description set edilmeden kaydedilemediği görülür
#    Ve task listesine "Elektronik" eklenir
#    Ve task listesine "Hepsimoda" eklenir
#    Ve task listesine "Ev,Yaşam,Kırtasiye,Ofis"" eklenir
#    Ve task listesine "Oto,Bahçe,Yapı Market" eklenir
#    Ve task listesine "Anne,Bebek,Oyuncak" eklenir
#    Ve scroll ile aşağı yukarı gidilebildiği görülür
#    Ve scroll ile ekranda "Elektronik" taskı seçtirilir










#    Ve "task 1" e  tıklanıp "1". satır seçilip "Elektronik" olarak güncellenir ve description yazılır


#
#    Ve "task 1" e  tıklanıp "1". satır seçilip "Elektronik" olarak güncellenir ve description yazılır
#    Ve "task 2" e  tıklanıp "2". satır seçilip "Hepsimoda" olarak güncellenir ve description yazılır
#    Ve "task 3" e  tıklanıp "3". satır seçilip "Ev,Yaşam,Kırtasiye,Ofis" olarak güncellenir ve description yazılır
#    Ve "task 4" e  tıklanıp "4". satır seçilip "Oto,Bahçe,Yapı Market" olarak güncellenir ve description yazılır
#    Ve "task 5" e  tıklanıp "5". satır seçilip "Anne,Bebek,Oyuncak" olarak güncellenir ve description yazılır