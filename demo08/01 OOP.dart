/*
  09 Dart中的对象 类 类的创建 构造函数 命名构造函数 类模块化  私有属性 私有方法 get set
*/

/*
  面向物件編程 (OOP) 的三個基本特徵是：封裝、繼承、多態      

      封裝：封裝是物件與類概念的主要特性之一。封裝將客觀事物抽象為類，並把部分屬性和方法提供給其他物件調用，而將一部分屬性和方法隱藏起來，不對外暴露
      繼承：面向物件編程 (OOP) 語言的一個主要功能就是「繼承」。繼承指的是利用現有類的功能，並在不需要重新編寫原始類的情況下對這些功能進行擴展
      多態：多態允許將子類型的指標賦值給父類型的指標，同一個函數調用在不同的情況下會有不同的執行效果

  Dart 中的所有東西都是物件，所有的物件都繼承自 Object 類

  Dart 是一門基於類並支持單繼承的面向物件程式設計語言，所有的物件都是類的實例，並且所有的類都是 Object 的子類

  一個類通常由屬性和方法組成

*/

void main(List<String> args) {
  // 最新版本的 dart 中不能用了
  // List list=new List();
  // list.isEmpty;
  // list.add('香蕉');

  Map m = new Map();
  m["username"] = "changsan";
  m.addAll({"age": 20});
  m.isEmpty;

  Object a = 123;
  Object v = true;
  print(a);
  print(v);
}
