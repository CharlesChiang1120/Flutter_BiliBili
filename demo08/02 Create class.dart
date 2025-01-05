/*
  09 Dart中的对象 类 类的创建 构造函数 命名构造函数 类模块化  私有属性 私有方法 get set
*/

/*
  Dart 是一門基於類且支援單繼承的面向物件編程語言 (OOP)，
  所有的物件都是類的實例，並且所有的類都是 Object 類的子類
*/

class Person {
  String name = "changsan";
  int age = 23;

  void getInfo() {
    // print("$name----$age");
    print("${this.name}----${this.age}");
  }

  void setInfo(int age) {
    this.age = age;
  }
}

void main(List<String> args) {
  // Instantiation
  var p1 = new Person();
  print(p1.name);
  p1.getInfo();

  print("---------------------");
  Person p2 = new Person();
  // print(p2.name);

  p2.setInfo(28);
  p2.getInfo();
}
