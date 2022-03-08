import 'dart:math';


class RasgeleMetinUretici {
  String? degerUret(){
    if( Random().nextBool() ){
      return "string ifade";
    }else{
      return null;
    }
  }
}
void main(List<String> args) {
  final uretici = RasgeleMetinUretici();
  if(uretici.degerUret() == null){
    print("null deger");
  }else{
    //metniYazdir(uretici.degerUret()); // direk print ile yazdirmayip bir fonksiyon yardimiyla yazdirmaya calisinca hata aldik
  }

  String? sonuc = uretici.degerUret();
  if(sonuc == null){
    print("null deger");
  }else{
    metniYazdir(sonuc); 
  }
}
void metniYazdir(String ifade){
  print(ifade);
}