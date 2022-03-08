//immutable degismez demek

class Student1 {
  final int id;
  final String isim;

  Student1(this.id, this.isim);
}
class Student2 {
  final int id;
  final String isim;

  const Student2(this.id, this.isim);
}

void main(List<String> args) {
  final Student1 ogrenci1 = Student1(5, "Melih");
  final Student1 ogrenci2 = Student1(5, "Melih");

  const Student2 ogr1 = Student2(6, "Emre");
  const Student2 ogr2 = Student2(6, "Emre");

  final Student2 ogr3 = const Student2(6, "Emre"); //farkli syntax cesitleri
  
  var ogr4 = const Student2(6,"Emre"); //farkli syntax cesitleri


  //ogrenci2.id = 123; id degeri degistirilemez

  if (ogrenci1 == ogrenci2)
    print(true);
  else
    print(false);
  //false dondurdu. Her ne kadar aynı şeyleri içerik olarak yazsak da ogrenci1 ve ogrenci2 nin adresleri farklı ve esit esittir kontrolu de adresleri karsiliastiriyor.

  if(ogr3 == ogr4)
    print(true);
  else
    print(false); // true cevirdi cunku const tanimladik ve ayni icerige sahip nesneler ayni adresi gosteriyor.

  
}
