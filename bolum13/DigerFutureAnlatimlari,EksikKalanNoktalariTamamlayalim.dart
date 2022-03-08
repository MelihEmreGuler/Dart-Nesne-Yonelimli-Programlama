void main(List<String> args) async{
  print("program basladi");
  Future<int> sonuc = Future((){
    int toplam = 0;
    for(int i = 0; i<1999999999; i++)
      toplam += i;
    //return toplam;
    throw Exception("toplam hesaplanamadi");
  });
  /* sonuc
  .then((value) => print(value))
  .catchError((onError){
    print(onError);
  }); */
  try{
    int forSonuc = await sonuc;
    print("******* $forSonuc");
    print("program bitti"); 
  }catch(e){
    print(e);
  }
  print("program bitti");
  
  
  var f2 = Future.value("Melih");
  var f3 = Future.error("hata ile biten future");

  f3.catchError((onError) => print(onError));
}