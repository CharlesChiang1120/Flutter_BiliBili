/*
  10 Dart 中的類靜態成員、操作符、類的繼承
*/

/*
 Dart 中的對象操作符:
  ?  條件運算符
  as 類型轉換
  is 類型判斷
  .. 級聯操作
 */

class Person {
  String name;
  num age;
  Person(this.name, this.age);
  void printInfo() {
    print("${this.name}---${this.age}");
  }
}

void main(List<String> args) {
  // Person? p;
  // p?.printInfo();

  // Person p = new Person("changsan", 20);
  // p?.printInfo();

  // Person p = new Person("changsan", 20);
  // if (p is Person) {
  //   p.name = "lisi";
  // }
  // p.printInfo();

  // print(p is Object);

  var p1;
  p1 = '';
  p1 = new Person("changsan1", 1);
  // p1.printInfo();

  (p1 as Person).printInfo();

  Person p2 = new Person("changsan1", 20);
  p2.printInfo();
  p2.name = 'changsan';
  p2.age = 40;
  p2.printInfo();

  Person p3 = new Person("changsan1", 20);
  p3.printInfo();
  p3
    ..name = 'lisi'
    ..age = 40
    ..printInfo();
}
