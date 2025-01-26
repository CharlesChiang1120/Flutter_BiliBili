/*
  16 Dart 性能優化之常量、identity 函數、常量構造函數詳解
*/

/*
  常量構造函數總結：
    1. **常量構造函數需以 `const` 關鍵字修飾**。
    2. **`const` 構造函數只能用於成員變數是 `final` 的類**。
    3. 如果在實例化時未加 `const` 修飾符，即使調用的是常量構造函數，實例化的對象也不是常量對象。
    4. 當實例化常量構造函數時，如果多個地方創建了該對象，且傳入的值相同，那麼內存中只會保留一個對象（共享存儲空間）。
    5. 在 Flutter 中，`const` 修飾不僅能節省組件構建時的內存開銷，還能避免對不應改變的組件進行重新構建，提高性能。

---

### 範例：
以下程式碼展示了如何使用常量構造函數，以及對象是否共享存儲空間的測試。
*/

class Container {
  final int width;   // 成員變數必須是 final
  final int height;  // 成員變數必須是 final

  // 常量構造函數需使用 const 關鍵字
  const Container({required this.width, required this.height});
}

void main() {
  // 普通對象測試：未使用 `const` 創建的對象
  var c1 = Container(width: 100, height: 100);
  var c2 = Container(width: 100, height: 100);
  print(identical(c1, c2)); // false，未使用 `const`，不共享存儲空間

  // 常量對象測試：使用 `const` 創建的對象
  var c3 = const Container(width: 100, height: 100);
  var c4 = const Container(width: 100, height: 100);
  print(identical(c3, c4)); // true，共享存儲空間

  // 常量對象測試：不同值的常量對象
  var c5 = const Container(width: 100, height: 110);
  var c6 = const Container(width: 120, height: 100);
  print(identical(c5, c6)); // false，不共享存儲空間，因為值不同
}

