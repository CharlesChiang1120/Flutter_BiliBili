/*
  16 Dart 性能優化之常量、identity 函數、常量構造函數詳解
*/

class Container {
  int width;
  int height;
  Container({required this.width, required this.height});
}

void main() {
  var c1 = new Container(width: 100, height: 100);
  var c2 = new Container(width: 100, height: 100);

  print(identical(c1, c2)); // false   c1 和 c2 在内存中存了2份
}
