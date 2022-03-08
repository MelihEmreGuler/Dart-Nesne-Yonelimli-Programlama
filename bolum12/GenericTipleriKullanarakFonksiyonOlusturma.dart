//bazen butun bir sinifta generic tip kullanmak yerine bazi methodlarinda kullanmayi tercih edebiliriz.
void main(List<String> args) {
  print(ortalamaBul<int>(123, 5));
  print(ortalamaBul<double>(1.23, 3.345));
}

num ortalamaBul<T extends num>(T s1, T s2) {
  //number sinifindan turemis degisken tiplerini kullaniyoruz cunku return ifadesinde "+" var. (String ifadeleri toplayabilirsin ama 2 ye bolemezsin.)
  return (s1 + s2) / 2;
}
