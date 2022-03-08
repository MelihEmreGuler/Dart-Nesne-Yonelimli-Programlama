import 'dart:math';


class VeriTabaniIslemleri {
  String _kullaniciAdi = "";
  String _sifre = "";

  VeriTabaniIslemleri(){}
  VeriTabaniIslemleri.loginWithNameAndPassword(this._kullaniciAdi, this._sifre);

  bool baglan() {
    if (_internetVarMi() == true && _kullaniciAdi == "melih" && _sifre == "123456")
      return true;
    else
      return false;
  }

  bool _internetVarMi() {
    return Random().nextBool();
  }

}
