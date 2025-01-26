/*
  14 Dart 中的庫 - 自定義庫、系統庫、第三方庫
 */

/*
延遲加載 (Lazy Loading)

    延遲加載，也稱為懶加載，是指僅在需要時再進行加載。
    懶加載的主要優勢是減少 APP 的啟動時間，提高性能。

    在 Dart 中，可以使用 `deferred as` 關鍵字來指定延遲加載的庫。例如：
    ```dart
    import "package:deferred/hello.dart" deferred as hello;
    ```

    當需要使用延遲加載的庫時，必須先調用 `loadLibrary()` 方法來加載該庫。例如：
    ```dart
    greet() async {
      await hello.loadLibrary(); // 加載庫
      hello.printGreeting();     // 使用加載的功能
    }
    ```
*/

