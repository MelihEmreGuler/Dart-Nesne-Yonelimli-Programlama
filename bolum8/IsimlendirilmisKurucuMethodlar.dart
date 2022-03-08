class otomobil {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  otomobil(this.modelYili, this.marka, this.otomatikMi){}

//ismlendirilmis kurucu metotlardan sınırsız sayida uretebiliriz.
  otomobil.markasizKurucuMetot (this.modelYili, this.otomatikMi){} 
  
  otomobil.modelYilsizKurucuMetot(this.marka,this.otomatikMi){} 

  void bilgileriSoyle() {
    print("Model Yili: $modelYili, Marka: $marka, Otomatik mi? $otomatikMi");
  }

  void yasHesapla (){
    print("Arabanin yasi: ${2022 - modelYili!}"); 
  }
}

void main(List<String> args) {
  otomobil araba1 = otomobil.markasizKurucuMetot(2020, true);

  otomobil araba2 = otomobil.modelYilsizKurucuMetot("Ford", true);



}