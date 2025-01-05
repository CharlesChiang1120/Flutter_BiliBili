/*
  09 Dart中的对象 类 类的创建 构造函数 命名构造函数 类模块化  私有属性 私有方法 get set
*/

// class Person {
//   String name = "changsan";
//   int age = 23;

//   // 默認構造函數
//   Person() {
//     print("Constructor invoked during initialization");
//   }
//   void printInfo() {
//     // print("$name----$age");
//     print("${this.name}----${this.age}");
//   }
// }

// class Person {
//   late String name;
//   late int age;

//   // 默認構造函數
//   Person(String name, int age) {
//     this.name = name;
//     this.age = age;
//   }
//   void printInfo() {
//     // print("$name----$age");
//     print("${this.name}----${this.age}");
//   }
// }

class Person {
  late String name;
  late int age;

  // 默認構造函數的簡寫
  Person(this.name, this.age);
  void printInfo() {
    // print("$name----$age");
    print("${this.name}----${this.age}");
  }
}

void main(List<String> args) {
  Person p1 = new Person("changsan", 20);
  p1.printInfo();

  Person p2 = new Person("lisi", 25);
  p2.printInfo();
}
