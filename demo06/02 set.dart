/*
  06 Dart List Set Map详解 以及循环语句 forEach map where any every
*/

/*
  - Set 的主要功能是去除數組中的重複內容
  - 它是一個無序且不能有重複值的集合
  - 因為無序，所以無法通過索引直接訪問元素
*/

void main(List<String> args) {
  var s = new Set();
  s.add("banana");
  s.add("apple");
  s.add("apple");
  print(s);

  print(s.toList());

  print("---------------------");
  List myList1 = ["banana", "apple", "watermelon", "banana", "apple"];

  var s1 = new Set();
  s1.addAll(myList1);
  print(s1);

  print(s1.toList());
}
