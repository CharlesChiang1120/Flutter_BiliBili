/*
  07 Dart中的函数  函数的定义 可选参数  默认参数  命名参数 箭头函数 匿名函数 闭包等(上)
*/

/*
    內建方法/函數：

        print(); // 用於輸出內容到控制台

    自定義方法：
        自定義方法的基本格式：

        返回類型 方法名稱(參數1, 參數2, ...) {
            方法體;
            return 返回值; // 根據返回類型決定是否需要 return 語句
        }
*/

void main() {
  print("System inner function");

  print("---------------------");
  printInfo();

  print("---------------------");
  var n = getNum();
  print(n);

  print("---------------------");
  print(printUserInfo());

  print("---------------------");
  print(getList());

  print("---------------------");
  // 演示方法的作用域
  void xxx() {
    aaa() {
      print(getList());
      print("aaa");
    }

    aaa();
  }

  xxx();
}

int getNum() {
  var myNum = 123;
  return myNum;
}

void printInfo() {
  print("Defined by myself");
}

String printUserInfo() {
  return "this is str";
}

List getList() {
  return ["111", "222", "333"];
}
