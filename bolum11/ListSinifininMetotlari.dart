import 'ListSinifininKuruculariVePropertyleri.dart';
void main(List<String> args) {
  Person ogrenci1 = Person(4, "Taha");
  Ogrenci ogrenci2 = Ogrenci(3, "Melih", 10);
  Person ogrenci3 = Ogrenci(1, "Vahid", 9);
  var ogrenci4 = Person(6, "Fehmi");
  var ogrenic5 = Ogrenci(7, "Sedef", 6);
  
  List<Person> tumOgrenciler = [ogrenci1, ogrenci2, ogrenci3, ogrenci4, ogrenic5];

  tumOgrenciler.sort((ogr1, ogr2) {
    if(ogr1.id < ogr2.id){
      return -1;
    }else if(ogr1.id>ogr2.id){
      return 1;
    }else{
      return 0;
    }
  });

  var mapIterable1 = tumOgrenciler.map((Person e) => "${e.isim}").toList();//fluttere gecmedigimiz icin widget e donusturmuyoruz ama string e donusturelim.
  print(mapIterable1[1]);
  var mapIterable2 = tumOgrenciler.map((Person e) => "${e.id}").toSet();
  print(mapIterable2);

  tumOgrenciler.add(ogrenci3);
  tumOgrenciler.addAll([ogrenci2,ogrenci3]); //.addAll ile yeni bir iterable(sıralanabilen) ifade ekliyoruz.
  // [ ] ifadesi isimsiz liste olusturmaya yariyor.
  print(tumOgrenciler);

  bool sonuc = tumOgrenciler.any((Person element) => element.id > 10);
  print(sonuc);

  Map<int, Person> yeniMap = tumOgrenciler.asMap(); //benim tunOgrenciler listemdeki verileri Map e donusturdu
  print(yeniMap[3]!.id); //kıvırcık parantezler Map ve set yapilarini hatirlatiyordu. key and vale sistemi Map yapisinda vardi.

  var bulunan = tumOgrenciler.firstWhere((element) => element.id == 1); //tum ogrenciler icinden sirasiyla kontrol edip id degeri 1 olan ilk buldugunu veriyor
  print(bulunan);
}