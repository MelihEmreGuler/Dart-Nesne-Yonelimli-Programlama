import 'dart:math';

void main(List<String> args) {
  
  double deger = kareKokunuAl(26);
  print(deger.toStringAsFixed(2));//.toStringAsFixed(2) ile virgulden sonra kac basamak gosterilecegini sectik

  try{
  double deger = kareKokunuAl(-1);
  print(deger.toStringAsFixed(2));
  } on FormatException catch(e){
    print(e.message);
  }catch(e){ //eger bu hatanin disinda herhangi bir sey cikarsa onu da burada yakalayabiliriz.
    print(e);
  }
}

double kareKokunuAl(int i){
  try{
    if(i<0){
      throw FormatException("Sayi Negatif Olamaz Fonksiyonun icindeyiz"); //return 0 falan dersek mantıksız olur cunku yine de negatif bir sayinin karekunu bulmus oluruz
      // throw ile hata mesaji firlat diyoruz hatayi secip dodurecegi ifadeyi de icine yaziyoruz.
      print("asdfg"); //gölgeli, karartilmis yazdi bu satiri conku program bu satira asla ugramicak. hatayi retun etmişiz gibi yollayacak fonksiyonun cagirildigi yere
      //hatayi firlatmakla isler bitmiyor, catch yapisi ile onu yakalamamiz lazim. ya bu fonksiyonun icinde ya da fonksiyonun cagirildigi yerde
    }else
      return sqrt(i);
  }on FormatException catch (e) { 
    print(e.message + " metot icindeyim");
  }finally {
    return 0;
  }

}
