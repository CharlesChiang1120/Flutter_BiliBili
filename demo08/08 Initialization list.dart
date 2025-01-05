/*
  09 Dart中的对象 类 类的创建 构造函数 命名构造函数 类模块化  私有属性 私有方法 get set
*/

// 在 Dart 中，我們可以在構造函數的函數體執行之前初始化實例變數
// 這通常通過初始化列表（Initializer List）來實現

class Rect {
  int height;
  int width;
  Rect()
      : height = 2,
        width = 10 {
    print("${this.height}---${this.width}");
  }
  getArea() {
    return this.height * this.width;
  }
}

void main() {
  Rect r = new Rect();
  print(r.getArea());
}
