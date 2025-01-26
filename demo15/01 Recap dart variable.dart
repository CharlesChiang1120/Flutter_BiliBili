/*
  16 Dart 性能優化之常量、identity 函數、常量構造函數詳解
*/

/*
Dart 常量: `final` 和 `const` 修飾符  

- **`const` 常量**：
  - `const` 聲明的常量是在 **編譯時** 確定的，並且永遠不會改變。
  - 適用於需要在程序運行前就確定值的情況。

- **`final` 常量**：
  - `final` 聲明的常量允許在聲明後賦值，但賦值後不可改變。
  - `final` 常量的值是在 **運行時** 確定的。
  - 與 `const` 不同，`final` 是 **惰性初始化**（Lazy Initialization），即在 **第一次使用前** 才初始化。

---

### `final` 和 `const` 的區別：
1. **編譯時與運行時**：
   - `const` 是 **編譯時常量**，值必須在編譯時確定。
   - `final` 是 **運行時常量**，值可以在運行時確定。
2. **是否立即初始化**：
   - `const` 在編譯時初始化。
   - `final` 是惰性初始化，只有在第一次使用時才初始化。
3. **賦值限制**：
   - `const` 必須在聲明時賦值。
   - `final` 可以稍後賦值，但只能賦值一次。

---
*/

void main() {
  // const 常量
  // const PI = 3.14;
  // PI = 3.14159;  // 報錯，const 定義的常量無法改變
  // print(PI);

  // final 常量
  final PI = 3.14;
  print(PI);

  // final 和 const 的區別
  // final 可以延遲賦值，但只能賦值一次
  final a;
  a = 13; // 第一次賦值
  // a = 14; // 報錯，final 常量只能賦值一次
  print(a);

  // final 支持運行時初始化
  final d = DateTime.now(); // 取得當前時間
  print(d);

  // const 必須是編譯時常量，無法使用運行時值初始化
  // const d = DateTime.now(); // 報錯，因為 DateTime.now() 是運行時值
}
