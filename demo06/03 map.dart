/*
  06 Dart List Set Map详解 以及循环语句 forEach map where any every
*/

/*
  映射 (Maps)

  - 映射是一種無序的鍵值對 (key-value pairs)
  - 每個鍵 (key) 都是唯一的，但值 (value) 可以重複
  - 使用鍵來訪問對應的值

  常用屬性：
    - keys            獲取所有的鍵
    - values          獲取所有的值
    - isEmpty         是否為空
    - isNotEmpty      是否不為空

  常用方法：
    - remove(key)     刪除指定鍵的數據
    - addAll({...})   合併映射，新增多組鍵值對
    - containsValue   檢查映射內是否包含指定的值，返回 true/false
    - forEach         遍歷每一組鍵值對，執行操作
    - map             返回一個新映射，對每組鍵值對應用函數
    - where           過濾映射，返回符合條件的鍵值對
    - any             檢查是否至少有一組鍵值對滿足條件
    - every           檢查是否所有鍵值對都滿足條件
*/

void main(List<String> args) {
  var person = {"name": "changsan", "age": 20};

  var m = new Map();
  m["name"] = "lisi";
  print(person);
  print(m);

  print("---------------------");

// Attribute

  Map person1 = {"name": "changsan", "age": 20, "sex": "male"};

  print(person1.keys.toList());
  print(person1.values.toList());
  print(person1.isEmpty);
  print(person1.isNotEmpty);

// Method

  person1.addAll({
    "work": ["coding", "UberEats"],
    "height": 160
  });
  print(person1);

  person1.remove("sex");
  print(person1);
  print(person1.containsValue("changsan"));
}
