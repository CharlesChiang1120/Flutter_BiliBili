/*
  06 Dart List Set Map详解 以及循环语句 forEach map where any every
*/

/*
常用屬性：
  - length          獲取 List 的長度
  - reversed        返回一個翻轉的 List（不改變原本的 List）
  - isEmpty         檢查 List 是否為空
  - isNotEmpty      檢查 List 是否不為空

  常用方法：
  - add(value)                 在 List 的末尾新增一個元素
  - addAll(list)               拼接另一個 List 到當前 List
  - indexOf(value)             查找元素在 List 中的索引，找不到返回 -1
  - remove(value)              刪除指定值的元素（僅刪除第一個匹配的元素）
  - removeAt(index)            刪除指定索引處的元素
  - fillRange(start, end, [value]) 修改 List 中指定範圍的元素
  - insert(index, value)       在指定位置插入一個元素
  - insertAll(index, list)     在指定位置插入一個 List
  - toList()                   將其他數據類型轉換為 List
  - join(separator)            將 List 轉換為字符串，並用指定的分隔符連接
  - split()                    將字符串轉換為 List（此為字符串的方法）
  - forEach(callback)          對 List 中的每個元素執行操作
  - map(callback)              對每個元素執行回調函數，返回新 List
  - where(condition)           過濾 List，返回滿足條件的元素集合
  - any(condition)             檢查 List 是否有任何元素滿足條件
  - every(condition)           檢查 List 中所有元素是否都滿足條件


 */
void main(List<String> args) {
// List attribute
  List myList = ["banana", "apple", "watermelon"];
  print(myList.length);
  print(myList.isEmpty);
  print(myList.isNotEmpty);
  print(myList.reversed); // 返回一個翻轉的 List（不改變原本的 List）

  var newMyList = myList.reversed.toList();
  print(myList.reversed.runtimeType); // ReversedListIterable<dynamic>
  print(newMyList);

  print("---------------------");

// List method
  List myList1 = ["banana", "apple", "watermelon"];

  // myList1.add("peach"); // add one element
  print(myList1);
  myList1.addAll(["grapes", "peach"]);
  print(myList1);

  // 查找元素在 List 中的索引，找不到返回 -1
  print(myList1.indexOf("grapes"));

  myList1.remove("watermelon");
  print(myList1);

  myList1.removeAt(1);
  print(myList1);

  print("---------------------");

  List myList2 = ["banana", "apple", "watermelon"];
  // myList2.fillRange(1, 3, "aaa");

  // myList2.insert(1, "vvv");
  myList2.insertAll(1, ["vvv", "xxx"]);
  print(myList2);

  print("---------------------");

  List myList3 = ["banana", "apple", "watermelon"];

  var str = myList3.join("-");
  print(str);
  print(str is String);

  var str1 = "banana-apple-watermelon";
  var list = str1.split("-");
  print(list);
  print(list is List);
}
