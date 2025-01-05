/*
  09 Dart中的对象 类 类的创建 构造函数 命名构造函数 类模块化  私有属性 私有方法 get set
*/

/*
  Dart 和其他面向物件語言不一樣，Dart 中沒有 `public`、`private`、`protected` 這些訪問修飾符
  但是我們可以通過在屬性或方法名前加 `_`（底線）來定義為私有
  屬性或方法如果以 `_` 開頭，則只能在其定義的類或庫中訪問
*/

import 'lib/Animal.dart';

void main(List<String> args) {
  Animal a = new Animal("dog", 3);
  // print(a.name);
  print(a.age);
  print(a.getName());
  // 間接調用私有方法
  a.execRun();
}
