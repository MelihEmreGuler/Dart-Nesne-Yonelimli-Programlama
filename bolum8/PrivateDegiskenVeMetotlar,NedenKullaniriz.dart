import 'VeritabaniIslemleri.dart';
void main(List<String> args) {
  VeriTabaniIslemleri db = VeriTabaniIslemleri();

  VeriTabaniIslemleri db2 = VeriTabaniIslemleri.loginWithNameAndPassword("melih", "123456");//kullanici adi ve sifre kontrolu basarili bir sekilde calisiyor
  
  bool sonuc = db2.baglan();
  if(sonuc)
    print("baglandim");
  else
    print("baglanamadim");

  //print(db._kullaniciAdi); eger ilgili class yapisi bu dosyada olursa private olarak tanımlanmıs bilgilerin hic bir anlami olmaz yani erisilebilirler
  //bu sebeple class tanimini farkli bir dosyada yapmaliyiz.
  //class tanimini VeritabaniIslemleri.dart isimli dosyaya tasidiğim icin artip private degiskenlere ulasamiyorum.
  
  
}