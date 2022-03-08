/* 
Soru 
Bir fonksiyon yazin bu fonksiyon aldigi id parametresine gore bir kullanici getirsin. 
Bu islem 2 saniye sonra sonuclanacaktir ve getirilen kisi bilgisi map olarak alinacaktir.
Bu map yapisinda username ve id bilgisi olmasi yeterlidir.

getrilen kisi bilgisindeki username degerini kullanarak kisinin kurslarini getiren bir fonksiyon yazin
Bu fonksiyon 4 saniye surecektir ve username degerine ait olan kurslari, icinde
kursun adlari olan bir liste olarak dondurulecektir.

Son olarak bu kurslar listesindeki ilk elemani parametre olarak alan ve bu kursa ait bir yorumu
donduren bir fonksiyon yazin. Bu fonksiyon 1 saniye surecektir.
 */

void main(List<String> args) {
  idyeGoreKullaniciyiGetir(12345).then((value) {
    print(value);
    usernameyeGoreKurslariGetir(value["username"]).then((List kurslarListesi) {
      print(kurslarListesi);
      ilkKursunIlkYorumunuGetir(kurslarListesi[0])
          .then((value) => print(value));
    });
  });
}

Future<Map<String, dynamic>> idyeGoreKullaniciyiGetir(int id) {
  print("$id id'li kullananici getiriliyor...");
/*   Map kullanici = {
  "Melih Emre Güler" : 12345,
  "Fehmi Tahsin Demirkan": 23456,
}; */
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {"username": "Melih Emre Güler", "id": id};
  });
}

Future<List<String>> usernameyeGoreKurslariGetir(String username) {
  print("$username kullanisinin kurslari getiriliyor");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ["Flutter", "Kotlin", "Java"];
  });
}

Future<String> ilkKursunIlkYorumunuGetir(String kursIsmi) {
  print("ilk kursun ilk yorumu getiriliyor");
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "Kurs Mukemmel.";
  });
}
