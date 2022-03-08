int? nullOlabilirAmaDegil = 5;
void main(List<String> args) {
  List <String> stringListesi = ["emre","melih","ali"];
  List<String>? nullOlabilecekStringListesi;//sonuna soru işareti
  List<String?> NullOlabilecekStrigleriTutanListe = ["melih",null,"emre"];//stringin sonuna soru işareti
  print(stringListesi);
  print(nullOlabilecekStringListesi);
  print(NullOlabilecekStrigleriTutanListe);

  //null olabilecek bir yapi non-nullable bir yapiya atanamaz.
  
  //eger scope nin icinde tanımlanırsa (int? nullOlabilirAmaDegil = 5;) dart bunu anlar bu null degil der ve sorun çıkarmaz.
  //ama bir ust scope'de tanımlarsak "null olabilecek bir yapi non-nullable bir yapiya atanamaz." hatasını görürüruz.
  int a = nullOlabilirAmaDegil!; 

  List<int?> nullDegerTutanListe = [2,3,null];
  int b = nullDegerTutanListe.first!;
  int c = nullDondurebilirAmaDondurmeyecek()!.abs(); //abs() mutlak deger alan fonksiyon
}

int? nullDondurebilirAmaDondurmeyecek(){
  return 5;
}