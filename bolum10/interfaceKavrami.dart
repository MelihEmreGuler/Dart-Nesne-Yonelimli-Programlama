//Dart dilinde interface kavrami yoktur, ama siniflari implements anahtar kelimesi ile
//interface imis gibi kullanabiliriz.
//interfaceler sayesinde ortak ozelligi olan ancak kalitimsal olarak anlami olmayan siniflari
//bir cati altinda toplayabiliriz.

//interface olarak kullanilan siniflarin methodlari bu siniflari implemente eden siniflar
//tarafindan yapilmak zorundadir.
//interfaceler sayesinde dart dilinde olmayan coklu kalitim saglanabilir. Bir sinif birden fazla
//sinifi implements diyerek gerceklestirebilir.

abstract class Hayvan {
void yasiyorMu(){
  print(true);
}
}
abstract class Ucabilenler {
  void fly();
}
abstract class Havlayabilenler {
  void bark();
}
abstract class Kosabilenler {
  void run();
}
class Kopek extends Hayvan implements Havlayabilenler, Kosabilenler { 
  @override
  void bark() {
    // TODO: implement bark
  }
//eger implements kullaniyorsak method overriding yapmak zorundayiz.
  @override
  void run() {
    // TODO: implement run
  }

}
class Kus extends Hayvan implements Ucabilenler{
  @override
  void fly() {
    // TODO: implement fly
  }
}
class Insan implements Kosabilenler{
  @override
  void run() {
    // ignore: todo
    // TODO: implement run
  }
}
void main(List<String> args) {
}