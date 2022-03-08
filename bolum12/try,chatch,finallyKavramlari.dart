void main(List<String> args) {
  print("program basladi");

  int sayi = 100 ~/ 6; //tilda isareti ile float sayi gelse bile sen integer kismini al diyoruz.
  print(sayi);

  //int sayi2 = 100 ~/ 0; //Unhandled exception: IntegerDivisionByZeroException hatasi veriyor. (istisna)
 //hata ciktiginda ugulama tam orada çalistirmayi kesmesin o kısmın hata mesajini ekrana bastirip calismaya devam etsin;

  //hatanin ney oldugunu ogrenmek icin bunu yapabiliriz.
  try{
  int sayi2 = 100 ~/ 1; 
  print(sayi2);
  }catch(e) { // hata mesajini parametre olarak alsin (e)
    print("hata mesaji $e");// eger bir hara yoksa buraya hic girmez, normal calisip devam eder.
  }finally { 
    print("islem bitti");//hata ciksa da cikmasa da finally blogu tetikleniyor
  }

  //direkt hataya yonelik bir kontrol yapip ona gore islemler yapmak icin;
  try{
    int sayi3 = 100~/ int.parse("Melih"); // integere donusturulemeyecek bir ifade verdim
    print(sayi3);
  // ignore: deprecated_member_use
  }on IntegerDivisionByZeroException {
    print("Bolen sifir olamaz");
  }on FormatException catch (e) { //eger hataya ozel baska metotlara erismek istiyorsak bu satirdaki gibi hata kontolunden sonra catch(e) yapmamiz lasim.
    print(e.message); //Invalid radix-10 number
    print(e.source); //Melih
  }catch(e){
    print("hata cikti $e");
  }finally {
    print("islem bitti");
  }


  print("program bitti");
  
}