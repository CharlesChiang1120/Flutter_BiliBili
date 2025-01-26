/*
  14 Dart 中的庫 - 自定義庫、系統庫、第三方庫
 */

/*
部分導入
  如果只需要導入庫中的一部分，可以使用以下兩種模式：

  - **模式一：僅導入需要的部分**  
    使用 `show` 關鍵字來顯式導入特定的功能。例如：
    ```dart
    import "package:lib1/lib1.dart" show foo;
    ```

  - **模式二：隱藏不需要的部分**  
    使用 `hide` 關鍵字來隱藏不需要的功能。例如：
    ```dart
    import "package:lib2/lib2.dart" hide foo;
    ```
*/

// 示例：使用 `hide` 隱藏特定功能
import "lib/myMath.dart" hide getName;

void main() {
  // `getName()` 被 `hide` 隱藏，無法使用
  // getName(); // 此行會報錯，因為 `getName` 沒有被導入

  // 只使用導入庫中未被隱藏的功能
  getAge(); // 可以正常調用
}
