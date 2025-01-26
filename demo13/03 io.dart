/*
  14 Dart 中的庫 - 自定義庫、系統庫、第三方庫
 */

import 'dart:io';
import 'dart:convert';

void main() async {
  var result = await getDataFromZhihuAPI();
  print(result);
}

getDataFromZhihuAPI() async {
  try {
    var httpClient = new HttpClient();
    var uri = new Uri.https('news-at.zhihu.com', '/api/3/stories/latest');
    var request = await httpClient.getUrl(uri);
    var response = await request.close();

    if (response.statusCode == 200) {
      return await response.transform(utf8.decoder).join();
    } else {
      return 'Error: ${response.statusCode}';
    }
  } catch (e) {
    return 'Exception occurred: $e';
  }
}
