/*
  14 Dart 中的庫 - 自定義庫、系統庫、第三方庫
 */

/*
  在前面介紹 Dart 基礎知識時，我們主要是在一個檔案中編寫 Dart 代碼，但在實際開發中不可能這樣做。模組化非常重要，因此我們需要使用庫的概念。
  在 Dart 中，庫是通過 `import` 關鍵字引入的。
  `library` 指令可以用來創建一個庫。每個 Dart 檔案本身就是一個庫，即使沒有使用 `library` 指令來指定。
  Dart 中的庫主要有三種類型：

  1、自定義庫  
    import 'lib/xxx.dart';
  2.
    import 'dart:math';
    import 'dart:io';
    import 'dart:convert';
  3. 
    Pub 套件管理系統中的庫
      https://pub.dev/packages
      https://pub.flutter-io.cn/packages
      https://pub.dartlang.org/flutter/

      1. 在項目的根目錄下新建一個 pubspec.yaml 文件。
      2. 在 pubspec.yaml 文件中配置名稱、描述、依賴等信息。
      3. 執行 pub get 指令，下載套件到本地。
      4. 在項目中引入庫：import 'package:http/http.dart' as http;
*/
