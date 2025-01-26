/*
  14 Dart 中的庫 - 自定義庫、系統庫、第三方庫
 */

/*
pub包管理系统:
1、可以從以下網址查找和選擇需要的 Dart 或 Flutter 庫：
        https://pub.dev/packages
        https://pub.flutter-io.cn/packages
        https://pub.dartlang.org/flutter/

2、創建一个pubspec.yaml文件，内容如下
    name: xxx
    description: A new flutter module project.
    dependencies:  
        http: ^0.12.0+2
        date_format: ^1.0.6

3、配置dependencies
4、運行pub get
5、看文檔使用
*/
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:date_format/date_format.dart';

void main(List<String> args) async {
  var url = Uri.parse(
      "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1");

  // 發送 HTTP GET 請求
  // var response = await http.get(url);
  // if (response.statusCode == 200) {
  //   var jsonResponse = convert.jsonDecode(response.body); // 解碼 JSON 格式的響應
  //   print(jsonResponse); // 打印 JSON 內容
  // } else {
  //   print("Request failed with status: ${response.statusCode}."); // 請求失敗
  // }

  // 測試日期格式化功能
  print(formatDate(DateTime(2025, 1, 26), [yyyy, '-', mm, '-', dd]));
}
