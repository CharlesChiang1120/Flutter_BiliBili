/*
  15 Dart 2.13 之後的一些新特性 - Null safety、late 關鍵字、空類型聲明符?、非空斷言!、required 關鍵字
*/

/*
  Null safety 翻譯成中文的意思是「空安全」。
  空安全可以幫助開發者避免在日常開發中一些難以發現的錯誤，並且還有額外的好處，例如改善性能。
  從 Flutter 2.2.0（2021 年 5 月 19 日發布）之後的版本，都要求使用空安全。
  ? 表示可空類型
  ! 表示類型斷言
 */

String? getData(apiUrl) {
  if (apiUrl != null) {
    return "this is server data";
  }
  return null;
}

// void printLength(String? str){
//   // print(str!.length);
//   if (str!=null){
//     print(str.length);
//   }
// }

void printLength(String? str) {
  try {
    print(str!.length);
  } catch (e) {
    print("str is null");
  }
}

void main(List<String> args) {
  // int a = 123;
  // print(a);

  // String username = "changsan";
  // print(username);

  // List<String> l1 = ["changsan", "lisi", "wangwu"];
  // print(l1);

  // int a = 123; // 非空 int 類型
  // a = null; // A value of type 'Null' can't be assigned to a variable of type 'int'.

  // String username = "changsan";
  // username = null; // A value of type 'Null' can't be assigned to a variable of type 'String'.
  // print(username);

  String? username = "changsan"; // String? 表示 username 是一個可空類型
  username = null;
  print(username);

  int? a = 123; // int? 表示 a 是一個可空類型
  a = null;
  print(a);

  List<String>? l1 = [
    "changsan",
    "lisi",
    "wangwu"
  ]; // List<String>? 表示 l1 是一個可空類型
  l1 = null;
  print(l1);

  // 調用方法
  print(getData("http://www.aaa.com"));
  print(getData(null));

  // ! 斷言類型
  // String? str = "this is str";
  // str = null;
  // print(str!.length); // str 等於 null 會拋出異常

  print("---------------------");
  printLength(null);
}
