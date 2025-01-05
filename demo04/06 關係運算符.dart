/*
  04 Dart运算符 条件表达式 Dart类型转换
 */

void main(List<String> args) {
  // == !+ > < >= <=

  int a = 5;
  int b = 3;

  print(a == b); // 判斷是否相等
  print(a != b); // 判斷是否不等
  print(a > b); // 判斷是否大於
  print(a < b); // 判斷是否小於
  print(a >= b); // 判斷是否大於等於
  print(a <= b); // 判斷是否小於等於

  if (a > b) {
    print('a 大於 b');
  } else {
    print('a 小於 b');
  }
}
