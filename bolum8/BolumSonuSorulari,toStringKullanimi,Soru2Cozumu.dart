//Ogrenci isimli sinif olusturun. Bu sinifta ogrencinin id si ve not degeri tutulmali.
//100 elemanli bir listede id ve not degerlerini rasgele olusturarak bu ogrencileri
//saklayin ve bu ogrencileri yazdiran metodu olusturun.

import 'Ogrenci.dart'; // fonksiyonlari ve classlari bu dosyadan cektim

void main(List<String> args) {
  Ogrenci o1 = Ogrenci(id: 12345, not: 55);
  //o1.ogrenciYazdir();
  List<Ogrenci> tumOgrenciler = List.filled(100,
      Ogrenci()); //fill kismini Ogrenci() şeklinde yaptik ve standart olarak boş özellikleri olan ogrenciler oluşturdu.
  //print(tumOgrenciler[0].id);

  ogrenciListesiniDoldur(tumOgrenciler);

  for (Ogrenci oAnkiOgrenci in tumOgrenciler) {
    //print("Ogrenci ${i+1} id : ${tumOgrenciler[i].id}, not: ${tumOgrenciler[i].not}");
    print(oAnkiOgrenci);
  }
  print(
      "Ogrencilerin not ortalamasi: ${ogrencilerinNotOrtalamasi(tumOgrenciler)}");
  print(
      "ogrencilerin %${dersiGecenOgrencilerinYuzdesi(tumOgrenciler)} kadari dersi gecmistir.");
}
