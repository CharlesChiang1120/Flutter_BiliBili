/*
  16 Dart 性能優化之常量、identity 函數、常量構造函數詳解
*/

/*
Dart `dart:core` 庫中 `identical` 函數的用法介紹

**用法:**
`bool identical(Object? a, Object? b)`

- 此函數用於檢查兩個引用是否指向同一個對象。
- 返回值：
  - `true`：兩個引用指向同一個對象，**共享存儲空間**。
  - `false`：兩個引用指向不同的對象，**不共享存儲空間**。

---

**範例:**
1. `identical(o1, o2)`：比較兩個普通對象是否相同。
2. `identical(const Object(), const Object())`：常量對象會被 Dart 編譯器 **常量化處理**，如果值相同則共享存儲空間。
3. `identical([1], [1])`：列表在 Dart 中默認是普通對象，不共享存儲空間，即使內容相同。
4. `identical(const [1], const [1])`：使用 `const` 關鍵字定義的列表，內容相同時會共享存儲空間。

---

程式碼示例：
*/

void main() {
  // 普通對象測試
  var o1 = Object();
  var o2 = Object();
  print(identical(o1, o2)); // false，兩個對象不共享存儲空間
  print(identical(o1, o1)); // true，同一對象

  print("---------------------");

  // 常量對象測試
  var c1 = const Object();
  var c2 = const Object();
  print(identical(c1, c2)); // true，共享存儲空間
  print(identical(c1, c1)); // true，同一對象

  print("---------------------");

  // 列表測試（普通列表）
  print(identical([2], [2])); // false，不共享存儲空間
  var a = [2];
  var b = [2];
  print(identical(a, b)); // false，兩個普通列表即使值相等也不共享存儲空間

  print("---------------------");

  print(identical(const [2], const [2])); // true
  const c = [2];
  const d = [2];
  print(identical(c, d)); // true

  print("---------------------");

  // 常量列表測試
  const list1 = [2];
  const list2 = [2];
  print(identical(list1, list2)); // true，共享存儲空間

  print("---------------------");

  const list3 = [2];
  const list4 = [3];
  print(identical(list3, list4)); // false，不共享存儲空間，因為值不同
}

/*
---

### **總結**
1. **普通對象 (`new` 或非 `const` 定義)**：
   - 不管值是否相等，兩個普通對象都不共享存儲空間。
   - 例如：
     ```dart
     var o1 = Object();
     var o2 = Object();
     print(identical(o1, o2)); // false
     ```

2. **常量對象 (`const` 定義)**：
   - 當常量對象的值相等時，它們會共享存儲空間。
   - 例如：
     ```dart
     const o1 = Object();
     const o2 = Object();
     print(identical(o1, o2)); // true
     ```

3. **列表對象**：
   - 普通列表即使內容相同，也不會共享存儲空間。
   - 常量列表（`const` 定義）內容相同時，會共享存儲空間。
   - 例如：
     ```dart
     print(identical([1], [1])); // false，普通列表
     print(identical(const [1], const [1])); // true，常量列表
     ```

4. **共享存儲空間的條件**：
   - 對象必須是常量（`const` 定義）。
   - 常量的值必須相等。

5. **編譯器的常量優化**：
   - 使用 `const` 定義的對象，Dart 編譯器會進行 **常量化處理**，優化內存使用，使相同的常量對象只存儲一次。

*/
