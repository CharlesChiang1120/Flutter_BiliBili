void main(List<String> args) {
  /* ! 取反 */

  bool flag = true;
  print(!flag); // 取反

  /* && 並且：全部為 true 的話值為 true 否則值為false */
  bool flag1 = true;
  bool flag2 = false;
  print(flag1 && flag2);

  /* || 或者：全為 false 的話值為 flase 否則值為 true */

  bool flag3 = true;
  bool flag4 = false;
  print(flag3 || flag4);

  // 如果一個人的年齡是 20，並且 sex 女的話我打印這個人
  // int age = 20;
  // String sex = '女';
  // if (age == 20 && sex == '女') {
  //   print("$age --- $sex");
  // } else {
  //   print("不打印");
  // }

  // 如果一個人的年齡是 20， 或者 sex 女的話我打印這個人
  int age = 23;
  String sex = '女';
  if (age == 20 || sex == '女') {
    print("$age --- $sex");
  } else {
    print("不打印");
  }
}
