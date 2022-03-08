class Ogrenci {
  //instance variables
  int ogrNo = 0;
  String OgrAd = "";
  bool aktifMi = true;

  void desCalis(){
    print("ogrenci ders calisiyor");
  }
}

void main(List<String> args) {
  Ogrenci melih = Ogrenci();
  melih.OgrAd = "Melih Emre Güler";
  print(melih.OgrAd);
  print(melih.aktifMi);
  melih.desCalis();
  
  var kemal = Ogrenci();


}