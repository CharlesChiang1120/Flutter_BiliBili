/*
  09 Dart中的对象 类 类的创建 构造函数 命名构造函数 类模块化  私有属性 私有方法 get set
*/

/*
  構造函數可以寫多個
*/
class Person {
  late String name;
  late int age;
  // 默認構造函數的簡寫
  Person(this.name, this.age);
  Person.now() {
    print("Named Constructor");
  }
  Person.setInfo(String name, int age) {
    this.name = name;
    this.age = age;
  }
  void printInfo() {
    print("${this.name}----${this.age}");
  }
}

void main(List<String> args) {
  // var d = new DateTime.now();
  // print(d);

  // 調用默認構造函數
  // Person p1 = new Person("changsan", 20);

  // 命名構造函數
  Person p1 = new Person.now();

  Person p2 = new Person.setInfo("lisi", 30);
  p2.printInfo();
}
