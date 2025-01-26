/*
  15 Dart 2.13 之後的一些新特性 - Null safety、late 關鍵字、空類型聲明符?、非空斷言!、required 關鍵字
*/

/*
  Null safety 翻譯成中文的意思是「空安全」。
  late 關鍵字主要用於延遲初始化。
*/
class Person {
  late String name;
  late int age;
  void setName(String name, int age) {
    this.name = name;
    this.age = age;
  }

  String getName() {
    return "${this.name}---${this.age}";
  }
}

void main(List<String> args) {
  Person p = new Person();
  p.setName("changsan", 20);
  print(p.getName());
}
