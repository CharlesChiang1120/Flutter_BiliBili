/*
  15 Dart 2.13 之後的一些新特性 - Null safety、late 關鍵字、空類型聲明符?、非空斷言!、required 關鍵字
*/

/*
  Null safety 翻譯成中文的意思是「空安全」。
  required 翻譯成中文的意思是「需要、依賴」。
  required 關鍵字:
    最開始 @required 是註解。
    現在它已經作為內建修飾符。
    主要用於允許根據需要標記任何命名參數（函數或類），使得它們不可為空。因為可選參數中必須有個 required 參數或者該參數有個預設值。
*/

String printUserInfo(String username, {int age = 10, String sex = "男"}) {
  // 行參
  return "姓名: $username --- 性別: $sex --- 年齡: $age";
}

String printInfo(String username, {required int age, required String sex}) {
  // 行參
  return "姓名: $username --- 性別: $sex --- 年齡: $age";
}

void main(List<String> args) {
  print(printUserInfo("張三"));
  print(printUserInfo("張三", age: 20, sex: "女"));

  // age 和 sex 必須傳入
  print(printInfo("張三", age: 22, sex: "女"));
}
