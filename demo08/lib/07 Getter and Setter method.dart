/*
  09 Dart中的对象 类 类的创建 构造函数 命名构造函数 类模块化  私有属性 私有方法 get set
*/

// class Rect {
//   late int height;
//   late int width;

//   Rect(this.height, this.width);

//   getArea() {
//     return this.height * this.width;
//   }
// }

class Rect {
  late num height;
  late num width;
  Rect(this.height, this.width);
  get area {
    return this.height * this.width;
  }

  set areaHeight(value) {
    this.height = value;
  }
}

void main(List<String> args) {
  // Rect r = new Rect(10, 4);
  // print(r.getArea());

  Rect r = new Rect(10, 2);
  // 調用直接通過訪問屬性的方式訪問 area
  print("Area: ${r.area}");

  print("---------------------");
  r.areaHeight = 6;
  print("Area: ${r.area}");
}
