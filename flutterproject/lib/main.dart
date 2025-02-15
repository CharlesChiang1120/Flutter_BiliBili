// importM
import 'package:flutter/material.dart';

void main(List<String> args) {
  // runApp(const Center(
  //   // ltr 從左到右
  //   // rtl 從右到左
  //   child: Text(
  //     "Hello Flutter",
  //     textDirection: TextDirection.ltr,
  //     style: TextStyle(
  //         // color: Colors.red,
  //         color: Color.fromRGBO(244, 244, 123, 1),
  //         fontSize: 50),
  //   ),
  // ));
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Hello Flutter")),
      body: const MyApp(),
    ),
  ));
}

// 可以直接打 statelessW 生成 (要安裝插件)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Center(
      //   child: Text(
      child: Text("Hello Flutter 我是一個自定義組件",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Colors.red,
              // color: Color.fromRGBO(244, 244, 123, 1),
              fontSize: 40)),
    );
  }
}
