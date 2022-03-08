//CemberDaire isminde bir sinif olusturun. Bu sinfin yaricap alan kurucusu
//olmali. Ayrica cevre ve alani metotlar olmali.(Pi sayisi 3.14 alin)

import 'CemberDaire.dart';
void main(List<String> args) {
  CemberDaire c1 = CemberDaire(5);
  print("${c1.cevreHesapla()} ${c1.alanHesapla()}");
  print(c1.getyaricap);
}