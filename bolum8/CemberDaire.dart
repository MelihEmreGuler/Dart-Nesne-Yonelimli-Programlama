
class CemberDaire {
  int _yaricap = 0;
  

  CemberDaire(int yaricap) {
    _yaricapKontrol = yaricap;
  }
  void set _yaricapKontrol(int deger){
    if (deger>0)
      _yaricap = deger;
    else
      _yaricap = 0;
  }
  
  int get getyaricap{
    return _yaricap;
  }
 

  double alanHesapla() {
    return this._yaricap * this._yaricap * 3.14;
  }

  double cevreHesapla() {
    return this._yaricap * 2 * 3.14;
  }
}
