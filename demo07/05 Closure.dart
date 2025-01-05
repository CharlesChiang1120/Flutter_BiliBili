/*
  08 Dart中的函数  箭头函数 匿名函数 闭包等(下)
*/

/*
閉包：
    1、全域變數的特點：
       全域變數常駐記憶體、可能污染全域範圍

    2、區域變數的特點：
       區域變數不常駐記憶體，會被垃圾回收機制釋放、不會污染全域範圍
  
    想實現的功能：

        1.常駐記憶體        
        2.不污染全域範圍    
          這樣就產生了閉包，閉包可以解決這個問題
          閉包：函數嵌套函數，內部函數會調用外部函數的變數或參數，這些變數或參數不會被系統回收（不會釋放記憶體）
	        閉包的寫法：函數嵌套函數，並 return 裡面的函數，這樣就形成了閉包

*/

// global variable
var a = 123;

void main(List<String> args) {
  print(a);
  print("---------------------");
  fn() {
    a++;
    print(a);
  }

  fn();
  fn();
  fn();

  print("---------------------");
  // local variable
  printInfo() {
    var myNum = 123;
    myNum++;
    print(myNum);
  }

  printInfo();
  printInfo();
  printInfo();

  print("---------------------");
  // closure
  fn1() {
    // 不會污染全局 常駐內存
    var a = 123;
    return () {
      a++;
      print(a);
    };
  }

  var b = fn1();
  b();
  b();
  b();
}
