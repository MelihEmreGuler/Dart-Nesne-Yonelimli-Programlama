void main(List<String> args) {
  Map<String, dynamic> map1 = Map();
  var map2 = <String, dynamic>{};

  map1["id"] = 5;
  map1["isim"] = "Melih";
  map1["renk"] = "yesil";

  var yeniMap1 = Map.from(map1); //baska bir map'i parametre olarak gecerek te yapabiliriz.
  var yeniMap2 = Map.from({"Oysa herkes oldurur sevdigini" : "Kulak verin bu dediklerime"}); // anlık olarak map tanimlayarak ta.
  print(yeniMap2["Oysa herkes oldurur sevdigini"]);

  var mapFromEntries = Map.fromEntries(map1.entries); // map1 yapimin birebir kopyasini olusturdum
  //print(mapFromEntries);

  var liste = [1,2,3,4];
  var mapFromIteable1 = Map.fromIterable(liste); //iterable lerden map yaptik ama key degerlerine ve value degerlerine ayni seyi atadi
  //print(mapFromIteable1);

  var mapFromIterable2 = Map<String,String>.fromIterable(liste, key: (item){ //iterable yi Map yapisina cevirirken, key degerleri ile value degerlerine mudahale ettik
    return "$item";
  },value: (item) => "${item*2}");
  //print(mapFromIterable2);

  //print(mapFromIterable2.entries); uyleri ekrana bastiriyor

  yeniMap2.update("Oysa herkes oldurur sevdigini", (value) => "Ama herkes oldurdu diye olmez"); // value denen deger eski degerdir. istersek karşısındaki update yerimize value*2 falan yazabiliriz.
  print(yeniMap2.entries);

  map1.update("alan", (value) => "bilisim", ifAbsent: () => "bilisim"); // alan keyininin valuesini update ediyoruz ama öyle bir key olup olmadigini bilmiyor isek.
  //ifAbsent opsiyonel parametresini kullanarak eger "alan" keyi yoksa öyle bir key olustur ve value kısmına "bilisim" yerlestir dedim.
  print(map1);

  map1.putIfAbsent("soy isim", () => "Güler"); //eger "soy isim" key i yoksa olustur. varsa hicbir sey yapma.
  print(map1);
  map1.putIfAbsent("isim", () => "Güler"); //isim keyinin value degeri degismedi cunku zaten var 
  print(map1);
}