/*
  13 Dart 中的泛型 - 泛型方法、泛型接口
 */

/* 
  集合 List 泛型類的用法
  案例：將下面的類轉換為泛型類，要求 MyList 裡面可以增加 int 類型的數據，也可以增加 String 類型的數據。
  但是每次調用增加的類型必須保持一致。
*/

/*
class MyList {
  List list = <int>[];
  void add(int value) {
    this.list.add(value);
  }
  List getList() {
    return list;
  }
}

  MyList l = new MyList();
  l.add(1);
  l.add(12);
  l.add(5);
  print(l.getList());
*/

class MyList<T> {
  List<T> list = <T>[]; // 定義泛型列表

  void add(T value) {
    this.list.add(value);
  }

  List<T> getList() {
    return list;
  }
}

void main(List<String> args) {
  MyList l1 = MyList();
  l1.add("changsan");
  l1.add(12);
  l1.add(true);
  print(l1.getList());

  // 測試 String 類型
  MyList l2 = MyList<String>();
  l2.add("changsan");
  l2.add("lisi");
  // l2.add(12); // 錯誤：類型不匹配
  print(l2.getList());

  // 測試 int 類型
  MyList l3 = MyList<int>();
  l3.add(11);
  l3.add(22);
  print(l3.getList());
}
