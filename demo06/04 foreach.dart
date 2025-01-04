/*
  06 Dart List Set Map详解 以及循环语句 forEach map where any every
*/

/*
        forEach     
        map         
        where       
        any
        every
*/

void main(List<String> args) {
  List myList = ["banana", "apple", "watermelon"];

  for (var i = 0; i < myList.length; i++) {
    print(myList[i]);
  }

  print("---------------------");
  for (var item in myList) {
    print(item);
  }

  print("---------------------");
  myList.forEach((value) {
    print("$value");
  });

  print("---------------------");
  List myList1 = [1, 3, 4];

  var newList = myList1.map((value) {
    return value * 2;
  });

  print(newList.toList());

  print("---------------------");
  List myList2 = [1, 3, 4, 5, 7, 8, 9];
  var newList1 = myList2.where((value) {
    return value > 5;
  });
  print(newList1.toList());

  print("---------------------");
  List myList3 = [1, 3, 4, 5, 7, 8, 9];

  // 只要集合裡面有滿足條件 就返回 true
  var f = myList3.any((value) {
    return value > 5;
  });
  print(f);

  print("---------------------");
  // 集合裡面有每個都滿足條件 就返回 true
  var ff = myList3.every((value) {
    return value > 5;
  });
  print(ff);

  print("---------------------");
  var s = new Set();
  s.addAll([1, 222, 333]);
  s.forEach((value) => print(value));

  print("---------------------");
  Map person = {"name": "changsan", "age": 20};

  person.forEach((key, value) {
    print("$key---$value");
  });
}
