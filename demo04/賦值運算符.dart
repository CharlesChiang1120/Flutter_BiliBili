void main(List<String> args) {
// 1. 基礎賦值運算符 = ??=
  // int a = 10;
  // int b = 3;
  // print(a);

  // int c = a + b;

  // b ??= 23; 表示如果 b 為空的話把 23 賦值給b
  int b = 10;
  b ??= 23;
  print(b);

  int? c;
  c ??= 8;
  print(c);

// 2. 複合賦值運算符 += -= *= /= ~/=
  // var a = 12;
  // a = a + 10;
  // print(a);

  // var a = 12;
  // a += 10;
  // print(a);

  var a = 4;
  a *= 3;
  print(a);
}
