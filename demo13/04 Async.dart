/*
  14 Dart 中的庫 - 自定義庫、系統庫、第三方庫
 */

/*
async 和 await 的使用說明：
  1. 只有被 async 修飾的方法才能使用 await。
  2. 如果要呼叫其他 async 方法，必須使用 await 關鍵字。
  
核心概念：
  - async 讓方法變成異步方法。
  - await 用來等待異步方法執行完成。
*/

void main() async {
  var result = await testAsync(); // 使用 await 等待異步方法完成
  print(result); // 打印結果
}

// 定義異步方法
testAsync() async {
  return 'Hello async'; // 返回結果
}
