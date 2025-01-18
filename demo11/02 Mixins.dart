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

mixin A {
  String info = "this is A";
  void printA() {
    print("A");
  }
}

mixin B {
  void printB() {
    print("B");
  }
}

class C with A, B {}

void main() {
  var c = new C();
  c.printA();
  c.printB();
  print(c.info);
}
