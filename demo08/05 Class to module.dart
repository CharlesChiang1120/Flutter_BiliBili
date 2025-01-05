/*
  09 Dart中的对象 类 类的创建 构造函数 命名构造函数 类模块化  私有属性 私有方法 get set
*/

import 'lib/Person.dart';

void main(List<String> args) {
  Person p2 = new Person.setInfo("lisi", 38);
  p2.printInfo();
}
