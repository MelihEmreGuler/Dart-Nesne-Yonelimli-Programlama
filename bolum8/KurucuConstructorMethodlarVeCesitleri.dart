class otomobil {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  // otomobil(){ // dart dilinde method overloading yoktur bu yüzden constructor yapisi sadece bir kez kullanilabilir
  //   print("constructor yapisi calisti");
  // }
  otomobil(int modelYili, String marka, bool otomatikMi){
    print("constructor yapisi calisti");
  }
  void bilgileriSoyle() {
    print("Model Yili: $modelYili, Marka: $marka, Otomatik mi? $otomatikMi");
  }
}

void main(List<String> args) {
  otomobil araba1 = otomobil(2021, "Toyota", true); //bu satırdan dolayı constructor calisti
  //araba1.modelYili = 2020;
  araba1.bilgileriSoyle();

  otomobil araba2 = otomobil(2020, "Renoult", true);
  print(araba2.marka);


}
