/*
	語法格式：
		
		while (表達式/循環條件) {			
		}			
    		
		do {
			語句/循環體
			
		} while (表達式/循環條件);
		
		注意：
      1. 最後的分號不要遺漏。
      2. 循環條件中使用的變數需要先初始化。
      3. 循環體中應該包含結束循環的條件，否則可能會造成死循環。
*/

void main(List<String> args) {
  // 無限迴圈
  // int i = 1;
  // while (i <= 10) {
  //   print(i);
  // }

  int i = 1;
  while (i <= 10) {
    print(i);
    i++;
  }

  print("---------------------");
  // 1. 求1+2+....+100的和
  int j = 1;
  var sum = 0;
  while (j <= 100) {
    sum += j;
    j++;
  }
  print(sum);

  print("---------------------");
  int k = 1;
  var sum1 = 0;
  do {
    sum1 += k;
    k++;
  } while (k <= 100);
  print(sum1);

  // while 和 do while 的區別 第一次循環條件不成立的情況下

  // int l = 10;
  // while(l < 2){
  // 	print("Run code");
  // }

  var l = 10;
  do {
    print("Run code");
  } while (l < 2);
}
