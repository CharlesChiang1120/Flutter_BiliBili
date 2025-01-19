/*
  13 Dart 中的泛型 - 泛型方法、泛型接口
 */

/*
  通俗理解：泛型是為了解決類、介面和方法的複用性，以及對不特定數據類型的支援（同時進行類型檢查）
*/

// 只能返回 String 類型的數據
// String getData(String value) {
//     return value;
// }

// 同時支援返回 String 類型和 int 類型（代碼冗餘）
// String getData1(String value) {
//     return value;
// }

// int getData2(int value) {
//     return value;
// }

// 同時返回 String 類型和數字類型，不指定類型可以解決這個問題
// getData(value) {
//     return value;
// }

// 不指定類型會放棄類型檢查。我們現在想實現的是：傳入什麼類型，就返回什麼類型。
// 比如：傳入 number 類型，必須返回 number 類型；傳入 string 類型，必須返回 string 類型。

T getData<T>(T value) {
  return value;
}

// 如果不想對返回類型校驗
// getData<T>(T value) {
//   return value;
// }

void main(List<String> args) {
  print(getData(21));
  print(getData("xxx"));
  // 測試不同類型的傳入和返回
  print(getData<int>(12)); // 傳入整數，返回整數
  print(getData<String>("Hello")); // 傳入字串，返回字串
  print(getData<double>(21.5)); // 傳入小數，返回小數
}
