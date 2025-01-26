/*
  14 Dart 中的庫 - 自定義庫、系統庫、第三方庫
 */

/*
1、衝突解決
當引入兩個庫中有相同名稱的標識符時，通常在 Java 中可以通過使用完整的包名路徑來指定具體標識符，甚至可以不用 `import` 直接使用。但是在 Dart 中，`import` 是必須的。

當發生名稱衝突時，可以使用 `as` 關鍵字來為庫指定一個前綴，從而解決名稱衝突。如下範例所示：

    import "package:lib1/lib1.dart";
    import "package:lib2/lib2.dart" as lib2;

    Element element1 = new Element();           // 使用來自 lib1 的 Element。
    lib2.Element element2 = new lib2.Element(); // 使用來自 lib2 的 Element。
*/

import "lib/Person1.dart"; // 引入第一個 Person 定義
import "lib/Person2.dart" as lib; // 引入第二個 Person 定義並用 as 關鍵字指定別名

main(List<String> args) {
  // 使用來自 Person1.dart 的 Person 類
  Person p1 = new Person("changsan", 20);
  p1.printInfo();

  // 使用來自 Person2.dart 的 Person 類（使用 lib 前綴）
  lib.Person p2 = new lib.Person("lisi", 20);
  p2.printInfo();
}
