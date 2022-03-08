//Higher order function : bir fonksiyonu parametre olarak alan veya geriye fonksiyon donduren fonksiyonlardır.
//tabi ikisini de ayni anda yapabilir.

void main(List<String> args) {
  List<int> liste = [1, 2, 3];
  liste.forEach((element) {
    // forEach listenin elemanlarini sira sira okur ve element'in içine koyar
    print("Element:$element"); // forEach fonksiyonu parametre olarak, parametre olarak int alan void donduren bir fonksiyon, alır
  });
  //hazir gelen element fonksiyonu yerine kendi fonksiyonumuzu yazalim.

  liste.forEach((callBack));

  KendiForEachYapim(liste, (int deger, int index) {
    print("Deger: $deger, İndex $index");
  });
}

void callBack(int callBack) {
  print(("Element->$callBack"));
} //element fonksiyonuyla ayni isi yapıyor.

void KendiForEachYapim(List<int> liste, Function callBack) {
  for (int i = 0; i < liste.length; i++) {
    callBack(liste[i], i);
  }
}
