#encoding: UTF-8
# language: tr

Özellik: mobil android telefonumla to-do app uygulamasina giris yapip burada yer alan tasklari silme,
  yeni task ekleme captionlarini degistirme ve aciklama eklemek istiyorum,
  boylelikle uygulamanin kullanırliligini gormus olacagim

  Senaryo: mobil android telefonda to-do app uygulamasi ile yeni task ekleme silme islemlerinin yapilmasi
    Diyelim ki belirtilen komutlarla android uygulamasina giris yapilir
#    Eğer ki uygulamada 5 adet checkbox olduğu görülürse
    O zaman tasklar sirasiyla check edilir
    Ve check edilen tasklardan "1".sinin unchecked yapılabildiği görülür
    Ve menuden "task 3" silinir
    Ve menuden "task 1" adi ve açiklamasi aşağıdaki gibi güncellenir
      | title       | Beyaz Esya      |
      | description | Buzdolabi Firin |
    Ve listeden "task 2" seçilip title ve description aşağıdaki gibi girilip kaydedilmeden çıkılırsa eklenmek istenen kaydın listede olmadığı görülür
      | title       | Cep Telefonu |
      | description | Iphone x     |
    Ve  task 5 seçilip title yazılmadan sadece description yazılırsa kaydedilemediği görülür
      | description | Macbook |
    Ve task 5 de title ve description set edilmeden kaydedilemediği görülür
    Ve task listesine "Elektronik" eklenir
    Ve task listesine "Hepsimoda" eklenir
    Ve task listesine "Ev,Yasam,Kirtasiye,Ofis" eklenir
    Ve task listesine "Oto,Bahce,Yapi Market" eklenir
    Ve task listesine "Anne,Bebek,Oyuncak" eklenir
    Ve task listesine "Spor Outdoor" eklenir
    Ve task listesine "Kozmetik Kisisel Bakim" eklenir
    Ve task listesine "Supermarket Petshop" eklenir
    Ve task listesine "Kitap muzik film hobi" eklenir
    Ve task listesine "Size Ozel Oneriler" eklenir
    Ve task listesine "Kesfet" eklenir
    Ve scroll ile aşağı yukarı gidilebildiği görülür
    Ve scroll methodu ile kaydedilen "Size Ozel Oneriler" task ı seçtirilir
    O zaman Uygulamadan cikis yapilir



