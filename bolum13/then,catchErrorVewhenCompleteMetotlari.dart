//fututre --> "olasi String deger dondurur"; return "asdf"; şeklinde string deger direk donduremezler.
import 'dart:io';

void main(List<String> args) {
  print("Anne cocugu ekmek almaya yollar");
  Future<String> geriDonut1 = asenkronEkmekAlmaIslemi();
  geriDonut1.then((String value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() => print("Ekmek alma operasyonu bitti"));
  //fonksiyonun icindeki return ettigi deger yani geriDonut degeri value nin icine atandi.
  //then methodu sayesinde fonksiyonun isi bitene kadar o sureyi bekliyoruz ve ondan sonra ekrana bastiriyoruz ki dogru seyi ekrana bassin.
  //catchError ile hatayi yakaladik

  print("Anne mutfaga gider");
  Future<String> geriDonut2 = asenkronPeynirZeytinHazirlamaIslemi();
  geriDonut2.then((value) => print(value)).catchError((hata) {
    print(hata);
  });

  print("kahvalti hazir");
}

Future<String> asenkronEkmekAlmaIslemi() {
  print("Cocuk ekmek almak icin evden cikar");
  Future<String> sonuc = Future.delayed(Duration(seconds: 5), () {
    //sure bitince yapilacak seyi virgul koyup yazabiliriz.
    return "Cocuk ekmekle eve girer";
    // throw Exception("Bakkalda ekmek kalmamis");
  });
  return sonuc;
}

Future<String> asenkronPeynirZeytinHazirlamaIslemi() {
  print("Anne peynir zeytin hazirlar");
  Future<String> sonuc = Future.delayed(Duration(seconds: 7), () {
    // return "peynir zeytin hazirlandi";
    throw Exception("annenin acil bir isi cikti");
  });
  return sonuc;
}
