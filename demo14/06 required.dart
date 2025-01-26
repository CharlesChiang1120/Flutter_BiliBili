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

// name 可以傳入也可以不傳入，age 必須傳入
class Person {
  String? name;   // 可空屬性
  int age;
  Person({this.name, required this.age});  // 表示 age 必須傳入，name 可選

  String getName() {
    return "${this.name}---${this.age}";
  }
}

void main(args) {
  Person p = new Person(
    name: "張三",
    age: 20
  );
  print(p.getName());  // 張三---20

  Person p1 = new Person(    
    age: 20
  );
  print(p1.getName());  // null---20
}
