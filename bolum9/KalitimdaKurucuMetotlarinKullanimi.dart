// alt siniftan bir nesne urettigimizde aralarinda kalitim iliskisi varsa
// kurucu metotlardan once inheritance edilen sınıfın kurucu metotu calistirilir
// ardindan o sinifin kendi kurucu metodu calistirilir.
import 'dart:io';

class Asker {
  String ad = " ";
  String memleket = " ";
  int yas = 0;
  Asker(this.ad, this.memleket) {
    print("Asker Kurucu Metodu Calisti");
  }
  void selamla() {
    print(" Asker $ad, $memleket, Emret Komutanım!");
  }
}

class Er extends Asker {
  Er(String ad, String memleket) : super(ad, memleket) {//super() yaparak ust sinifin kurucusunu calistir dedim.
    print("Er sinifinin kurcusu calisti");
  }
  void yasDegistir(int yas){
  super.yas = yas; //ust sinifin yasina eris ve parametre olarak alinan yas ile degistir.
}
  @override
  void Selamla() {
    print("Er $ad, $memleket, Emret Komutanım!");
  }
}



void main(List<String> args) {
  Er asker1 =Er("Melih Emre Güler", "Ordu");
}
