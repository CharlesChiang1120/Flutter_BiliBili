class Person {
  String name;
  int age;

  // 默認構造函數的簡寫
  Person(this.name, this.age);

  // 打印信息的方法
  void printInfo() {
    print("Person1: ${this.name}----${this.age}");
  }
}
