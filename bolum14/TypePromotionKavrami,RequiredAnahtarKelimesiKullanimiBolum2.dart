void main(List<String> args) {
  final topla = ucSayiyiTopla(ilk: 1, ikinci: 2, ucuncu: 5);

  String? mesaj;
  if (DateTime.now().hour < 12) {
    mesaj = "iyi sabahlar";
  }else{
     mesaj = "iyi aksamlar";
  }
  print("******************");
  print(mesaj);
  print(mesaj.length); //eger mesaj degiskeninin null olarak kalma ihtimali olsaydi length methodu hata verecekti.
  //cunku null un uzunlugu yoktur.
  print("******************");
  try{
    print(karakterSayisinibul(null));
  }catch(e){
    print(e);
  }
}

int ucSayiyiTopla(
    {required int ilk, required int ikinci, required int ucuncu}) {
  //fonksiyon cagirildigi yerde opsiyonel parametreler kesinlikle girilecek demektir required.
  return ilk + ikinci + ucuncu;
}
int karakterSayisinibul(String? metin){
  if(metin == null)
    throw Exception("metin null degerlidir"); //artik metin' in null olmadigi kesin ve hata vermiyo
  return metin.length;
}
