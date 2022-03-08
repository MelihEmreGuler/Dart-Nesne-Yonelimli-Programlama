//dart optionally typed bir dildir. Yani veri tiplerini belirtmek istege baglidir.
//Sürekli kullanilan koleksiyon yapilari (liste, map, set) varsayilan olarak heterojendir.
//Yani ayni koleksiyon yapisinda farkli turde verileri saklayabiliriz. Ama yapmali miyiz?

//Generic tipler sayesinde bir yapida hangi tur verilerin olacagini soyleriz.
//Boylece bu yapilar type-safe olur, compile time esnasinda hatali veri girisi tespit edilir
//ve bize hatamizi soyler.
//Boylece runtime esnasinda cikabilecek hatalarin onuna gecilir.

//Generic tipler <> icinde belirtilir. List<String> ifadesi bu listede sadece String veriler
//olacagi anlamina gelir. Bu listeye String disinda bir veri eklenirse daha programi calistirmadan
//hata aliriz ve duzeltmemiz gerekir. Boylece daha guvenli kod yazmis oluruz.

//Genericler dartta bulunan cogu yapida zaten vardir. Liste, map, set, Future, Stream ... gibi.
//Kendi olusturdugumuz siniflarda ve metotlarda da genericleri uygulayabiliriz.
//Böylece hem daha guvenli kod yazmis oluruz
//hem de benzer amaclari gerceklestiren kod yapilarini tek bir yapida toplayabiliriz.

void main(List<String> args) {
  List liste1 = [];
  liste1.add("Melih");
  liste1.add(123);
  liste1.add(true);
  //listeYazdir(liste1); //integer bir sayinin length'i olmaz

  List<String> liste2 = [];
  liste2.add("asdf");
  liste2.add("qwerty");
  listeYazdir(liste2);
}

//List<E> ==> Element
//Map<K> ==> Key
//Map<K, V> ==> Value
//R ==> Methodlarin return tipleri icin
//Ogrenci<T extends Insan> bla bla ==> gelecek veri turu mutlaka insan sinifini inheritance eden veri olmali

listeYazdir(List list) {
  print(list[1].length);
}
