//Ogrenci isimli sinif olusturun. Bu sinifta ogrencinin id si ve not degeri tutulmali.
//100 elemanli bir listede id ve not degerlerini rasgele olusturarak bu ogrencileri
//saklayin ve bu ogrencileri yazdiran metodu olusturun.

import 'dart:math';

class Ogrenci {
  int id;
  int not;
  Ogrenci({this.id = 0, this.not = 0});
  void ogrenciYazdir() {
    print("id: $id, not: $not");
  }

  @override
  String toString() {
    return "ID: $id, Not: $not";
  }
}

void ogrenciListesiniDoldur(List<Ogrenci> tumOgrenciler) {
  //parametrenin ismi ayni olmak zorunda degil ama karisikligi onlemek icin ayni yaptim.
  for (int i = 0; i < tumOgrenciler.length; i++) {
    tumOgrenciler[i] =
        Ogrenci(id: Random().nextInt(50000), not: Random().nextInt(100));
  }
}

double ogrencilerinNotOrtalamasi(List<Ogrenci> tumOgrenciler) {
  double toplam = 0;
  for (Ogrenci oAnkiOgrenci in tumOgrenciler) {
    toplam += oAnkiOgrenci.not;
  }
  return toplam / tumOgrenciler.length;
}

double dersiGecenOgrencilerinYuzdesi(List<Ogrenci> tumOgrenciler) {
  double sayac = 0;
  for (Ogrenci oAnkiOgrenci in tumOgrenciler) {
    if (oAnkiOgrenci.not >= 50) {
      sayac += 1;
    }
  }
  return sayac * 100 / tumOgrenciler.length;
}
