class Kisi {
  String isim;
  int yas;
  Kisi(this.isim, this.yas);
  void kendiniTanit() {
    print("Benim adim $isim ve yasim $yas");
  }
}

class Calisan extends Kisi {
  int maas;
  Calisan(String isim, int yas, this.maas) : super(isim, yas) {

  }
  @override
  void kendiniTanit() {
    super.kendiniTanit();
    print("maasim da $maas");
  }
}

void main(List<String> args) {
  Kisi kisi1 = Kisi("Melih Emre Guler", 20);
  kisi1.kendiniTanit();
  Calisan kisi2 = Calisan("Fehmi Tahsin Demirkan", 19, 10000);
  kisi2.kendiniTanit();
}
