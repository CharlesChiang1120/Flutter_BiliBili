import 'dart:async';

void main(List<String> args) {
  /* 
    ++ -- 表示自增 自減 1

    在賦值運算裡面，如果 ++ -- 寫在前面，這時候先運算，再賦值，如果 ++ -- 寫在後面，這時候先賦值，再運算
  */

  //  b = ++d
  //  b = d = d+1
  //  a = c=c+1

  var a = 10;
  a++; // a=a+1
  print(a);

  var b = 10;
  b--; // b=b-1
  print(b);

  // var c = 10;
  // var d = c++;
  // print(c); // 11
  // print(d); // 10

  // var c = 10;
  // var d = ++c;
  // print(c); // 11
  // print(d); // 11

  // var c = 10;
  // var d = --c;
  // print(c); // 9
  // print(d); // 9

  var c = 10;
  var d = c--;
  print(c); // 9
  print(d); // 10
}
