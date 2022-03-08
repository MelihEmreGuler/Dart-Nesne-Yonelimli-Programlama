/* 
bazı durumlarda değişmez değerlere ihtiyaç duyabiliriz. bir değer atadıktan sonra bu değerin
sonradan değiştirilmesini istemiyorsak final ve const anahtar kelimeleri ile değişkenlerimi tanımlarız.
kullanım ve amaçları aynı olan bu iki kavramın farkı :
final : değer atandıktan sonra, bellekte yer ayrılması sadece erişilirse olur
const : bu da aslında final'dir ama derleme anında değer atanır ve bellekte yeri ayrılır, hiç kullanılmasa bile... 
burada veri türü belirtilebilir ama isteğe bağlıdır, yani belirtilmese de olur.
En önemli fark ise instance değişkenler sadece final olarak tanımlanır, const ile tanımlanamaz.
const ile tanımlanması için static const olmalıdır.
 */
//IMMUTABLE DEGİSMEZ




void main(List<String> args) {
  var str1 = "Melih";
  str1 = "Emre";

  //final ve const kullanirken var anahtar kelimesi ile degisken atayamiyoruz.
  final String str2 = "Melih"; 
  // str2 = "Emre"; doğal olarak hata veriyor 

  const String str3 = "Melih";
  // str3 = "Emre"; doğal olarak hata veriyor 

  //final olarak tanimli degiskenlerin degerleri run time esnasinda yerlestirilir.
  //const olarak tanimli degiskenlerin degerleri compile time esnasinda yerlestirilir (ekranda ciktiyi gorene kadar gerceklestirilen hazirliklarda)
  final tarih = DateTime.now();
  //const tarih = DateTime.now();  hata veriyor (constant a run time esnasinda belirli olacak degerleri atayamazsin)

  //internetten veri cekiyorken uygulamamız acilir, internete istek yollanir, ondan sonra veriler cekilir
  //compile esnasinda uygulama acilmadan internete istek yollayacagimizi bilmenin imkani yok o yüzen bu işlemi de const degiskende saklayamayiz
  
  //const anahtar kelimesini de compile time esnasinda degeri bilinen degiskenlerde kullanacagiz

  List<int> l1 = [1,2,3];
  List<int> l2 = [1,2,3];
  if(l1 == l2)
    print(true);
  else
    print(false); 
// listeler birbirinin ikizi olsa da esit degiller cunku kontrol esnasinda listelerin bellek adresileri karsilastiriliyor
//ve aynı adreste (aynı liste) olmadiklari icin esit degiller sonucu donuyor.

final liste1 = [1,2,3,4];
final liste2 = [1,2,3,4];
  if(liste1 == liste2)
    print(true);
  else
    print(false);
//ayni sekilse false donduruyor.

  liste1.add(5);//final tanimli listeye eleman ekleyip cikarabiliyorum.
  //peki final tanimlanmasinin farki ney?

/*   liste1 = Map();
  liste1 = [6,7,8,9]; */ //seklinde yanlislikla yeniden tanimlama yapmamizi onluyor

  const liste3 = [10,11,12];//(unmodifiable list)
  //liste3.add(13); derledigimizde hata veriyor.(Unsupported operation: Cannot add to an unmodifiable list)

  //cannonicalized
  const liste5 = [10,11,12];
  const liste6 = [10,11,12];
  const liste7 = [10,11,12];// hepsi farkli liste gibi gözükseler de const tanimli olduklari için isimleri farkli olsa da bellekte sadece bir tane yer tutuyorlar
  const liste8 = [10,11,12];//sadece listeleri gosteren poinerlerin isimleri farkli (bellek dostu bir uygulama yapmaya yariyor.)
  const liste9 = [10,11,12];
  const liste10 = [10,11,12];

  //bellek dostu ve hizli calisan uygulamalar icin final ve const anahtar kelimelerini kullaniyoruz.
} 
