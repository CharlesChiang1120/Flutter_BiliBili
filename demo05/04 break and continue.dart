/*
  break 語句的功能:
      1. 在 switch 語句中使流程跳出 switch 結構。
      2. 在循環語句中使流程跳出當前循環，遇到 break 後循環終止，後面的程式碼也不會執行。
      
      強調:
      1. 如果在循環中已經執行了 break 語句，就不會執行循環體中位於 break 後的程式碼。
      2. 在多層循環中，一個 break 語句只能向外跳出一層。

    break 可以用在 switch case 中，也可以用在 for 循環和 while 循環中。

  continue 語句的功能:
    
    【注意】只能在循環語句中使用，使本次循環結束，即跳過循環體中尚未執行的程式碼，接著進行下一次的循環條件判斷。

    continue 可以用在 for 循環以及 while 循環中，但不建議用在 while 循環中，因為可能會導致不小心進入死循環。
*/

void main(List<String> args) {
  // for (var i = 1; i <= 10; i++) {
  //   print(i);
  // }

  // 1. 如果 i 等於 4 的話跳過
  for (var i = 1; i <= 10; i++) {
    if (i == 4) {
      continue; // 跳過當前循環 然後循環還會繼續執行
    }
    print(i);
  }

  print("---------------------");
  // 2. 如果 i 等於 4 的話跳出循環
  for (var i = 1; i <= 10; i++) {
    if (i == 4) {
      break; // 跳出循環
    }
    print(i);
  }

  print("---------------------");
  // 3、break 語句只能向外跳出一層
  for (var i = 0; i < 5; i++) {
    print('outer----$i');
    for (var j = 0; j < 3; j++) {
      if (j == 1) {
        break;
      }
      print('inner$j');
    }
  }

  print("---------------------");
  //4、while  break跳出循環
  var i = 1;
  while (i <= 10) {
    if (i == 4) {
      break;
    }
    print(i);
    i++;
  }

  print("---------------------");
  var sex = "男";
  switch (sex) {
    case "男":
      print('男');
      break;
    case "女":
      print('男');
      break;
    default:
  }
}
