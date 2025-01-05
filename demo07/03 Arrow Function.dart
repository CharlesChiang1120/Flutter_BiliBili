/*
  08 Dart中的函数  箭头函数 匿名函数 闭包等(下)
 */

void main(List<String> args) {
  List list = ["banana", "apple", "watermelon"];

  list.forEach((value) {
    print(value);
  });

  print("---------------------");
  list.forEach((value) => print(value));

  print("---------------------");
  // 大括號非必要
  list.forEach((value) => {print(value)});

  print("---------------------");
  // 需求：修改下面 List 裡面的數據，讓陣列中大於 2 的值乘以 2
  List list1 = [4, 1, 2, 3, 4];
  var newList = list1.map((value) {
    if (value > 2) {
      return value * 2;
    }
    return value;
  });

  print(newList.toList());

  print("---------------------");
  var newList1 = list1.map((value) => value > 2 ? value * 2 : value);
  print(newList1);

  print("---------------------");
  /*
    需求：
      1. 定義一個方法 `isEvenNumber` 來判斷一個數是否是偶數
      2. 定義一個方法列印 1 到 n 範圍內的所有偶數
  */
  // isEvenMumber(int value) {
  //   var a = value % 2 == 0 ? true : false;
  //   return a;
  // }

  // print(isEvenMumber(2));

  bool isEvenNumber(int n) {
    if (n % 2 == 0) {
      return true;
    }
    return false;
  }

  printNum(int n) {
    for (var i = 1; i <= n; i++) {
      if (isEvenNumber(i)) {
        print(i);
      }
    }
  }

  printNum(10);
}
