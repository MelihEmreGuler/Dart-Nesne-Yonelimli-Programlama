//Siniflarimizda nesne uretmeden bazi degiskenlere ve metotlara erismek isteyebiliriz
//Burada karsimiza static karvrami cikar.

//Static kullanarak nesne degil sinif degiskenleri ve methodlari olusturabiliriz.
//Bir sinifta tanimlanan method ve degiskenlere erisirken mutlaka nesne uretmemiz gerekirdi
//Ama biz bunlari static olarak tanimlarsak artik nesne uretmeden bu degerlere erisebilir ve 
//kullanabiliriz. Artik onlar nesnelerin degil sinifin method ve degiskenleridir.

//ayrica static degiskenler kullanilana kadar deger almazlar, bellekte yer ayirilmaz
//static methodlarin icinde this anahtar kelimesi kullanilmaz.

//static methodlarin icinden nesneye ozgu alanlara erisilemezken, nesneye ozgu method icinden
//static degerlere erisilebilir.
class Matematik { 
  //instanca variable
  int _birinciSayi;
  int _ikinciSayi;
  //int toplamIslemSayisi = 0; seklinde tanimlayip nesne uzerinden erisirsek sadece o nesnenin yaptigi islemleri sayacta sayar.
  static int toplamIslemSayisi = 0; 
  static double PI = 3.14; //class variable (sinif degiskeni)
  Matematik(this._birinciSayi,this._ikinciSayi);
  static void degiskenleriSoyle () {
    print("_birinciSayi, _ ikinciSayi, PI");
    // topla(); hata veriyor. static method icerisinden instance variable lere erisilemez.
  }

  void topla () {
    degiskenleriSoyle(); // örnek olsun diye yazdim. instance kısımda static metotlara erisebiliyoruz ama tersi yapılamiyor.
    print("Toplam ${_birinciSayi+_ikinciSayi}");
    toplamIslemSayisi++;
  }
  void cikar () {
    print("Farklari ${_birinciSayi - _ikinciSayi}");
    toplamIslemSayisi++;
  }
}
void main(List<String> args) {
  Matematik m1 = Matematik(4, 5);
  Matematik m2 = Matematik(3, 2);
  print(Matematik.PI);
  Matematik.degiskenleriSoyle();
  print(Matematik.toplamIslemSayisi);
  m1.topla();
  m1.topla();
  m1.topla();
 
  m1.cikar();
  m1.cikar();

  m2.topla();
  m2.topla();

  m2.cikar();
  m2.cikar();
  m2.cikar();

  print(Matematik.toplamIslemSayisi);
  
}
