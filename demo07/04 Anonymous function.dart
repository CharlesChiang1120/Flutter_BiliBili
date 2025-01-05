/*
  08 Dart中的函数  箭头函数 匿名函数 闭包等(下)
*/

int getNum(int n) {
  return n;
}

void main(List<String> args) {
  print(getNum(12));

  print("---------------------");
  // 匿名方法
  var printNum = () {
    print(123);
  };
  printNum();

  print("---------------------");
  var printNum1 = (int n) {
    print(n + 2);
  };
  printNum1(12);

  print("---------------------");
  // 自執行方法
  (() {
    print("自執行方法");
  })();

  ((int n) {
    print(n);
    print('自執行方法');
  })(12);

  print("---------------------");
  // Recursive
  var sum = 1;
  fn(int n) {
    sum *= n;
    if (n == 1) {
      return;
    }
    fn(n - 1);
  }

  fn(5);
  print(sum);

  print("---------------------");
  // Recursion 求 1 - 100 的和
  var sum1 = 0;
  fn1(int n) {
    sum1 += n;
    if (n == 0) {
      return;
    }
    fn1(n - 1);
  }

  fn1(100);
  print(sum1);
}
