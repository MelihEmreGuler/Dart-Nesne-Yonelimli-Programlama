//Closure özel bir fonksiyondur,
//closure ile bir üst kapsamdaki degiskenlerin degerlerini degistirebiliriz.

Function topla(int deger2) {
  //geriye fonksiyon donduren bir fonksiyon.
  return (int deger1) =>deger1 * deger2; //geriye dondurduğu fonksiyon isimsiz bir foksiyon olsun o fonksiyon da degeri 2 ile carpip dondursun.
}

void main(List<String> args) {
  Function f1 = topla(5); //topla fonksiyonu geriye bir fonksiyon dndurdu.
  print(f1(4)); //f1 fonksiyonunun ozelliklerini biliyoruz (2 sayiyi carpip return ediyor);

  var dondurulenFonksiyon = topla(3);
  var sonuc = dondurulenFonksiyon(4);
  print(sonuc); //12
}
