/*
  10 Dart 中的類靜態成員、操作符、類的繼承
*/
/*
  Dart 中的靜態成員:
  1. 使用 static 關鍵字來實現類級別的變量和函數
  2. 靜態方法不能訪問非靜態成員，非靜態方法可以訪問靜態成員
*/

// class Person {
//   static String name = 'changsan';
//   static void show() {
//     print(name);
//   }
// }

// void main(List<String> args) {
//   // var p = new Person();
//   // p.show();

//   print(Person.name);

//   Person.show();
// }

import '../demo07/01 Function.dart';

class Person {
  static String name = 'changsan';
  int age = 20;
  static void show() {
    print(name);
  }

  // 非靜態方法可以訪問靜態成員以及非靜態成員
  void printInfo() {
    print(name); // 訪問靜態屬性
    print(this.age); // 訪問非靜態屬性

    show(); // 調用靜態方法
  }

  static void printUserInfo() {
    print(name); // 靜態屬性
    show(); // 靜態方法

    // print(this.age); // 靜態方法沒法訪問非靜態屬性
    // this.printInfo(); // 靜態方法沒法訪問非靜態方法
    // printInfo();
  }
}

void main(List<String> args) {
  var p = new Person();
  p.printInfo();

  Person.printUserInfo();
}
