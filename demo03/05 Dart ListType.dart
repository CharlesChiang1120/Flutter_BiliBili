void main(List<String> args) {
  var l1 = ["changsan", 20, true];
  print(l1);
  print(l1.length);
  print(l1[0]);
  print(l1[1]);

  var l2 = <String>["changsan", "lisi"];
  print(l2);

  var l3 = <int>[1, 23];
  print(l3);

  // 增加數據
  var l4 = [];
  print(l4);
  print(l4.length);

  l4.add("changsan");
  l4.add("lisi");
  l4.add(20);
  print(l4);
  print(l4.length);
  print("----------------");
  print(l4.hashCode);

  var l5 = ["changsan", 20, true];
  l5.add("lisi");
  print(l5);

  // 定義 list
  // var l6 = new List(); // not available in new version
  // var l6 = List.filled(2, "");
  // print(l6);
  // print(l6[0]);

  // l6[0] = "changsan";
  // l6[1] = "lisi";

  // print(l6);

  // l6.add("wangwu"); // error

  // Can't modify length of list
  // var l6 = List.filled(2, "");
  // l6.length = 0;
  // print(l6); // error

  var l7 = <String>["changsan", "lisi"];
  print(l7);
  l7.length = 0;
  print(l7);

  var l8 = List<String>.filled(2, "");
  l8[0] = "string";
  print(l8);
}
