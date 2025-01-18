/*
  12 Dart 中個類實現多個接口
 */

/*
mixins 的中文意思是「混入」，即在類中混入其他功能。
在 Dart 中，可以使用 mixins 實現類似多重繼承的功能。
隨著 Dart 版本的不斷演進，mixins 的使用條件也發生了變化，以下是 Dart 2.x 中使用 mixins 的條件：

  1、作為 mixins 的類只能繼承自 Object，不能繼承其他類。
  2、作為 mixins 的類不能有構造函數。
  3、一個類可以混入多個 mixins 類。
  4、mixins 絕不是繼承，也不是介面，而是一種全新的特性。
*/

class Person {
  String name;
  num age;
  Person(this.name, this.age);

  void printInfo() {
    print('${this.name}----${this.age}');
  }

  void run() {
    print("Person Run");
  }
}

mixin A {
  String info = "this is A";

  void printA() {
    print("A");
  }

  void run() {
    print("A Run");
  }
}

mixin B {
  void printB() {
    print("B");
  }

  void run() {
    print("B Run");
  }
}

class C extends Person with B, A {
  C(String name, num age) : super(name, age);
}

void main(List<String> args) {
  var c = C("changsan", 20);
  c.printInfo();
  c.printB();
  print(c.info);
  c.run(); // 預設執行混入中最後一個的 run 方法，這裡是 A 的 run
}
