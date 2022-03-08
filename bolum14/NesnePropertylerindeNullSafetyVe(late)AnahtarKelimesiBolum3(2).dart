class Yemek {
  late final String tanim ; //basina late anahtar kelimesi koyarsak, degiskeni null olarak tanımlanmis birakabilirim 
  //ama eger bu degiskeni kullanacaksam, kullanmadan once mutlaka icine deger vermeliyim yoksa hata alirim.
  late final int fiyat;
  
  void setTanim(String tanim){
    this.tanim = tanim;
  }
  Yemek(int fiyat){
    this.fiyat = fiyat;
  }
  
}

void main(List<String> args) {
  final yemegim = Yemek(12);
  yemegim.setTanim("makarna");
  print(yemegim.tanim);
  yemegim.fiyat;
}