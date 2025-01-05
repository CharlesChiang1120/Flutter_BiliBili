class Person {
  late String name;
  late int age;
  // 默認構造函數的簡寫
  Person(this.name, this.age);

  Person.now() {
    print("Named Constructor");
  }

  Person.setInfo(String name, int age) {
    this.name = name;
    this.age = age;
  }

  void printInfo() {
    print("${this.name}----${this.age}");
  }
}
