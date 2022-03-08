//dart dili single thread bir dildir(Kuyruk yapisi: ilk giren ilk cikar)
//Flutter framework'u ise Multi thread bir framework'tur. Bir islem yapilirken beklenmesi gerekiyorsa uygulama kitlenmez.
import 'dart:io';

void main(List<String> args) {
  //Senkron Programlama ornegi (cocuk ekmege gittiginde anne hicbir sey yapmadan bekliyor)
/*   print("Anne cocugu ekmek almaya yollar");
  senkronEkmekAlmaIslemi();
  print("Anne mutfaga gider");
  senkronPeynirZeytinHazirlamaIslemi();
  print("kahvalti hazir"); */

  print("Anne cocugu ekmek almaya yollar");
  asenkronEkmekAlmaIslemi();
  print("Anne mutfaga gider");
  asenkronPeynirZeytinHazirlamaIslemi();
  print("kahvalti hazir");
}

void senkronEkmekAlmaIslemi() {
  print("Cocuk ekmek almak icin evden cikar");
  sleep(Duration(seconds: 5));
  print("Cocuk ekmekle eve girer");
}

void senkronPeynirZeytinHazirlamaIslemi() {
  print("Anne peynir zeytin hazirlar");
  sleep(Duration(seconds: 5));
}

void asenkronEkmekAlmaIslemi() {
  print("Cocuk ekmek almak icin evden cikar");
  Future.delayed(Duration(seconds: 5), () {
    //sure bitince yapilacak seyi virgul koyup yazabiliriz.
    print("Cocuk ekmekle eve girer");
  });
}

void asenkronPeynirZeytinHazirlamaIslemi() {
  print("Anne peynir zeytin hazirlar");
  Future.delayed(Duration(seconds: 5), () {
    //isimlendirilmemis lamda fonsksiyonlar denir bunlara parantez aç kapa kıvırcık parantezler
    print("peynir zeytin hazirlandi");
  });
}
