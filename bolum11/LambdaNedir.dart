//Lambda : ismi olmayan fonksiyonlardir. Dartta her fonksiyon aslinda bir nesnedir.
void sayilariTopla(int a,int b){
  print(a+b);
}

void main(List<String> args) {
  Function fonksiyon1 = (int a, int b){
    int toplam = a + b;
    print(toplam);
  };

  print(fonksiyon1);
  fonksiyon1(5,8); //13

  var f1 = (int s1) => s1 * 2;
  var f2 = (int s1){
    return s1 *2;
  };
  var sayi = f1(5);
  print(sayi); //10
  print(f2(6)); //12
}