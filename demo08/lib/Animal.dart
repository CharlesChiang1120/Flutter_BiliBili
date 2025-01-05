class Animal {
  // Private attribute
  late String _name;
  late int age;
  // 默認構造函數的簡寫
  Animal(this._name, this.age);

  void printInfo() {
    print("${this._name}----${this.age}");
  }

  String getName() {
    return this._name;
  }

  void _run() {
    print("Private function");
  }

  // 類裡面的方法調用
  execRun() {
    this._run();
  }
}
