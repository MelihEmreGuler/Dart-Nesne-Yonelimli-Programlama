void main(List<String> args) {
  print("Anne cocugu ekmek almaya yollar");
  asenkronEkmekAlmaIslemi()
      .then((value) => print(value))
      .catchError((hata) => print(hata))
      .whenComplete(() => print("Ekmek alma operasyonu bitti"));

  print("Anne mutfaga gider");
  asenkronPeynirZeytinHazirlamaIslemi()
      .then((value) => print(value))
      .catchError((onError) => print(onError))
      .whenComplete(() => print("peynir zeytin hazirlama operasyonu bitti"));

  print("kahvalti hazir");
}

Future<String> asenkronEkmekAlmaIslemi() {
  print("Cocuk ekmek almak icin evden cikar");
  return Future.delayed(Duration(seconds: 5), () {
    // return "Cocuk ekmekle eve girer";
    throw Exception("Bakkalda ekmek kalmamis");
  });
}

Future<String> asenkronPeynirZeytinHazirlamaIslemi() {
  print("Anne peynir zeytin hazirlar");
  return Future.delayed(Duration(seconds: 8), () {
    //return "peynir zeytin hazirlandi";
    throw Exception("annenin acil bir isi cikti");
  });
}
