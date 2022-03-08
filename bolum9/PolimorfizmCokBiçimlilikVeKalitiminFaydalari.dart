import 'IlkKalitimOrnegiVeMethodOverriding.dart';

void main(List<String> args) {
  User user1 = User();
  var user2 = NormalUser();
  var user3 = SadeceOkuyabilenNormalUser();

  User user5 = AdminUser();
  User user6 = SadeceOkuyabilenNormalUser(); //Upcasting, yukari cevirme
  List<User> tumUserlar = [];
  
  
  tumUserlar.add(user1);
  tumUserlar.add(user2);
  print(user2);
  
  test(user1);//poliymorphism
  test(user2);
  test(user3);
  test(user5);

}
