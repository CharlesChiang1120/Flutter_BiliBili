void main(List<String> args) {
// 1. if-else switch-case

  // bool flag = true;
  // if (flag) {
  //   print('trus');
  // } else {
  //   print('false');
  // }

// 判斷一個人的成績 如果大於 60 顯示及格 如果大於 70 顯示良好 如果大於 90 顯示優秀

  var score = 80;
  if (score > 90) {
    print('優秀');
  } else if (score > 70) {
    print('良好');
  } else if (score > 60) {
    print('及格');
  } else {
    print('不及格');
  }

  var sex = "男";
  switch (sex) {
    case "男":
      print("性別是男");
      break;
    case "女":
      print("性別是女");
      break;
    default:
      print("傳入參數錯誤");
      break;
  }

// 三目運算符
  var flag = true;
  var c;
  if (flag) {
    c = "我是true";
  } else {
    c = "我是false";
  }

  print(c);

  bool flag1 = true;
  String d = flag1 ? "我是true" : "我是false";
  print(d);

// 3. ??運算符

  var a = 22;
  var b = a ?? 10;

  print(b);
}
