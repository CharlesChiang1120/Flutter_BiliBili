void main(List<String> args) {
// 1. Ｎumber 與 String 類型之間的轉換
  // Number 類型轉換成 String 類型 toString()
  // String 類型轉換成 Number 類型 parse()

  // 報錯
  // String price = '';
  // var myNum = double.parse(price);
  // print(myNum);
  // print(myNum is double);

  // try catch
  String price = '';
  try {
    var myNum = double.parse(price);
    print(myNum);
    print(myNum is double);
  } catch (err) {
    print(0);
  }

  var myNum1 = 12;
  var str = myNum1.toString();
  print(str is String);

// 2. 其他類型轉換成 Boolean 類型
  // isEmpty: 判斷字符串是否為空

  var str1 = 'xxx';
  if (str1.isEmpty) {
    print('str 空');
  } else {
    print('str 不為空');
  }

  var myNum2 = 123;
  if (myNum2 == 0) {
    print('0');
  } else {
    print('非0');
  }

  var myNum3;
  if (myNum3 == null) {
    print('空');
  } else {
    print('非空');
  }

  var myNum4 = 0 / 0;
  if (myNum4.isNaN) {
    print('Nan');
  }
}
