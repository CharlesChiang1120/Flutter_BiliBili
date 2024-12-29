/*
  for 基本語法
      for (int i=1; i<=100; i++) {
      print(i);
      }

      // 第一步， 聲明變量 int i=1;
      // 第二步， 判斷 i <= 100
      // 第三步， print(i);
      // 第四步， i++
      // 第五步， 從第二步再來，直到判斷為 false
*/

void main(List<String> args) {
  // 1. 打印 0-10
  for (int i = 0; i <= 10; i++) {
    print(i);
  }

  print("---------------------");
  // 2. 打印 0-50 所有偶數
  for (int i = 0; i <= 50; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  print("---------------------");
  // 3. 求1+2+3+...+100的和
  var sum = 0;
  for (var i = 0; i <= 100; i++) {
    sum += i;
  }
  print(sum);

  print("---------------------");
  // 4. 計算 5!
  var sum1 = 1;
  for (var i = 1; i <= 5; i++) {
    sum1 *= i;
  }
  print(sum1);

  print("---------------------");
  // 5. 打印 List [1, 2, 3]
  List l1 = [1, 2, 3];
  // print(l1[1]);

  for (var i = 0; i < l1.length; i++) {
    print(l1[i]);
  }

  print("---------------------");
  // 6. 打印 List
  List l2 = [
    {"title": "news111"},
    {"title": "news222"},
    {"title": "news333"}
  ];

  for (var i = 0; i < l2.length; i++) {
    print(l2[i]["title"]);
  }

  print("---------------------");
  // 7. 定義一個二維數組 打印裡面的內容
  List l3 = [
    {
      "cate": 'domestic',
      "news": [
        {"title": "domesticNews1"},
        {"title": "domesticNews2"},
        {"title": "domesticNews3"}
      ]
    },
    {
      "cate": 'international',
      "news": [
        {"title": "internationalNews1"},
        {"title": "internationalNews2"},
        {"title": "internationalNews3"}
      ]
    }
  ];

  /*
  domestic
    domesticNews1
    domesticNews2
    domesticNews3
  international
    internationalNews1
    internationalNews2
    internationalNews3
   */

  for (var i = 0; i < l3.length; i++) {
    print(l3[i]["cate"]);
    for (var j = 0; j < l3[i]["news"].length; j++) {
      print(l3[i]["news"][j]["title"]);
    }
  }
}
