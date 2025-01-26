class Animal {
  String _name; // 私有屬性
  int age;

  // 默認構造函數的簡寫
  Animal(this._name, this.age);

  // 打印資訊的方法
  void printInfo() {
    print("${this._name}----${this.age}");
  }

  // 獲取私有屬性 _name 的方法
  String getName() {
    return this._name;
  }

  // 私有方法
  void _run() {
    print("這是一個私有方法");
  }

  // 執行私有方法 _run
  void execRun() {
    this._run(); // 類內部方法的相互調用
  }
}
