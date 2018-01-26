#encoding: UTF-8
# language: tr

Özellik: belirtilen url uzerinde api testi yapip http status kodlarina gore sonucun basarili
  ya da basarisiz oldugunu gormek istiyorum

  @Odev-1
  Senaryo: Url in degistirilmeden status kodu 200 gelmesini
    Diyelim ki belirtmiş olduğum  "http://generator.swagger.io/api/swagger.json" adresine bir "get" işlemi yapilirsa
    O zaman http status code 200 geldiği görülür

  @Odev-2
  Senaryo: Url in govdesi asagidaki gibi degisirse status kodu 504 gelmesi
    Diyelim ki belirtmiş olduğum  "http://generator.swagger.io/api/swagger.json" adresine bir "get" işlemi yapilirsa
    O zaman http status code 504 geldiği görülür


  @Odev-3
  Senaryo: Url in uzantisi degistirilirse status kodu 404 not found gelmesi
    Diyelim ki belirtmiş olduğum  "http://generatorsss.swagger.io/api/swagger.jsonsfs" adresine bir "get" işlemi yapilirsa
    O zaman http status code 504 geldiği görülür