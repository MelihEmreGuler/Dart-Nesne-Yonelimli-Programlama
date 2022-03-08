void main(List<String> args) {
  Ogrenci ogr1 = Ogrenci(6);
  print(ogr1.yas);
  try{
    Ogrenci ogr2 = Ogrenci(-5);
    print(ogr2.yas);
  }on AgeException catch(e){
    print(e.mesaj);
  }
  // ogr2.yas degeri olusmadi, kisaca ogr2 nesnesi olusturulmadi. kurucu constructor da geriye bir sey dondurmeden hata mesajiyla cikis yaptik
}
class AgeException implements Exception {
  String mesaj;
  AgeException({this.mesaj = "Age Exception"});
  @override
  String toString() {
    // TODO: implement toString
    return "Hatanin toString methodu calisti";
  }
}
class Ogrenci{
  int yas = 0;
  Ogrenci(int yas){
    if(yas<0){
      // print("yas degeri 0'dan kucuk olamaz"); //bunu yapınca kullaniciyi uyardik ama yine de yas degiskenine 0 degerini koydu
      throw AgeException(mesaj: "Age Exception - Yas negatif olamaz");
    }else
      this.yas = yas;
  }
}
