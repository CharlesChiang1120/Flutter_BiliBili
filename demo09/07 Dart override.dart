/*
  10 Dart 中的類靜態成員、操作符、類的繼承
*/

/*
  物件導向的三大特性：封裝、繼承、多型

  Dart 中的類的繼承
    1. 子類使用 extends 關鍵詞來繼承父類
    2. 子類會繼承父類裡面可見的屬性和方法 但是不會繼承構造函數
    3. 子類能複寫父類的方法 getter 和 setter
 */

class Person {
  String name = 'changsan';
  int age = 20;
  Person(this.name, this.age);
  void printInfo() {
    print("${this.name}---${this.age}");
  }

  work() {
    print("${this.name} is looking for a job");
  }
}

class Web extends Person {
  String sex;
  Web(super.name, super.age, this.sex);
  run() {
    print("${this.name}---${this.age}---${this.sex}");
    super.work();
  }

  @override
  void printInfo() {
    // TODO: implement printInfo
    print("Override printInfo...");
  }

  @override
  work() {
    // TODO: implement work
    print("Override work");
  }
}

void main(List<String> args) {
  Web w = new Web("lisi", 20, "m");
  w.printInfo();
  w.run();
}
