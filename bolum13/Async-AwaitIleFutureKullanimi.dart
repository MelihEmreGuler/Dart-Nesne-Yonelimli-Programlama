// await kullanilan fonksiyonlarda fonksiyonun kıvırcık parantezlerinden once async kullanilmak zorunda
void main(List<String> args) { 
  
  print("internetten kisi verisi getirilecek");

  kisiyleIlgiliIslemler();
  print("baska islemler yapilacak");

  print("islem bitti");
}
void kisiyleIlgiliIslemler()async{
  String kisi = await kisiVerisiniGetir(); 
  //then yapisina gerek kalmadan await key' i ile kisiVerisiniGetir() fonksiyonunun isi bittiginde kisi degiskeninin icine koy dedik.
  print(kisi);
}
Future<String> kisiVerisiniGetir() {
  return Future<String>.delayed(Duration(seconds: 5),(){
    return "Kisi Adi: Vahid Tahir ve id: 100";
  } );
}

//await key'i nin yazildigi fonksiyonun icinde alttaki islemleri tamamlamak icin await in gerceklesmesi beklenir
//then yapisinda boyle degili. then in yazildigi yerde direk alttaki satirlar da calisiyordu en son then gerceklestirilince ekrana bastiriliyordu.