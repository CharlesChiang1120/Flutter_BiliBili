/*
  12 Dart 中個類實現多個接口
 */

/*
  mixins 的實例類型是什麼？
  很簡單，mixins 的類型就是其超類的子類型。
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
  var c = C();

  print(c is C); // true
  print(c is A); // true
  print(c is B); // true

  // var a = A();
  // print(a is Object); // mixins 不能被單獨實例化，因此此行代碼會報錯
}
