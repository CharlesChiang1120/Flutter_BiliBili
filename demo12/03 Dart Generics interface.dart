/*
  13 Dart 中的泛型 - 泛型方法、泛型接口
 */

/*
Dart 中的泛型介面：

  實現數據快取的功能：包括文件快取和內存快取，並按照介面約束實現。

  1. 定義一個泛型介面，約束其子類必須實現 `getByKey(key)` 和 `setByKey(key, value)` 方法。
  2. 要求 `setByKey` 的時候，`value` 的類型必須與實例化子類時指定的類型一致。
*/

// abstract class ObjectCache {
//   getByKey(String key);
//   void setByKey(String key, Object value);
// }

// abstract class StringCache {
//   getByKey(String key);
//   void setByKey(String key, String value);
// }

abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key, T value);
}

class FileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print("我是文件快取，把 key=${key}，value=${value} 的數據寫入到文件中");
  }
}

class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print("我是內存快取，把 key=${key}，value=${value} 的數據寫入到內存中");
  }
}

void main(List<String> args) {
  // 使用內存快取處理 String 類型
  MemoryCache<String> m1 = MemoryCache<String>();
  m1.setByKey("index", "首頁數據");

  // 使用內存快取處理 Map 類型
  MemoryCache<Map> m2 = MemoryCache<Map>();
  m2.setByKey("index", {"name": "張三", "age": 20});

  // 使用文件快取處理數據
  FileCache<int> f = FileCache<int>();
  f.setByKey("user_id", 12345);
}
