/*
  07 Dart中的函数  函数的定义 可选参数  默认参数  命名参数 箭头函数 匿名函数 闭包等(上)
*/

void main(List<String> args) {
  // 1、定義一個方法：計算從 1 到指定數字的總和  1+2+3+。。。+60

  int sumNum(int n) {
    var sum = 0;
    for (var i = 1; i <= n; i++) {
      sum += i;
    }
    return sum;
  }

  var n1 = sumNum(5);
  print(n1);
  var n2 = sumNum(100);
  print(n2);

  print("---------------------");
  // 2. 定義一個方法，輸出用戶資訊
  String printUserInfo(String username, int age) {
    // 行參 (方法的參數)
    return "姓名: $username --- 年齡: $age";
  }

  print(printUserInfo("張三", 20)); // 實參

  print("---------------------");
  // 3. 定義一個帶可選參數的方法，並設置默認值
  String printUserInfo1(String username, [int age = 0]) {
    if (age != 0) {
      return "姓名: $username --- 年齡: $age";
    }
    return "姓名: $username --- 年齡保密";
  }

  print(printUserInfo1("張三", 21)); // 傳入實參（姓名和年齡）
  print(printUserInfo1("張三")); // 只傳入實參（姓名），不傳入年齡

  print("---------------------");
  // 4. 定義一個帶默認參數的方法
  String printUserInfo2(String username, [String sex = "男", int age = 0]) {
    // 行參
    if (age != 0) {
      return "姓名: $username --- 性別: $sex --- 年齡: $age";
    }
    return "姓名: $username --- 性別: $sex --- 年齡保密";
  }

  print(printUserInfo2("張三"));
  print(printUserInfo2("小李", "女"));
  print(printUserInfo2("小李", "女", 30));

  print("---------------------");
  // 5. 定義一個帶命名參數的方法（需要指定類型與默認值）
  String printUserInfo3(String username, {int age = 0, String sex = '男'}) {
    if (age != 0) {
      return "姓名: $username --- 性別: $sex --- 年齡: $age";
    }
    return "姓名: $username --- 性別: $sex --- 年齡保密";
  }

  print(printUserInfo3("張三", age: 20, sex: "未知"));

  print("---------------------");
  // 6. 實現一個把方法當作參數傳入的方法
  fn1() {
    print('fn1 被執行');
  }

  fn2(fnname) {
    // fn 是函數型參數
    fnname(); // 執行傳入的函數
  }

  // 呼叫 fn2 方法，並將 fn1 當作參數傳入
  fn2(fn1);

  var fn = () {
    print('我是匿名方法');
  };
  fn(); // 調用匿名方法
}
