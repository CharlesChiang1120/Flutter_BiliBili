// 21 Flutter Container 組件、Text 組件詳解 (45:05)

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Hello Flutter")),
      body: const Column(children: [MyApp(), MyBottom(), MyText()]),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
      alignment: Alignment.center,
      width: 200,
      height: 200,
      // transform: Matrix4.translationValues(40, 0, 0),
      // transform: Matrix4.rotationZ(0.2),
      // transform: Matrix4.skewY(2),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 244, 193, 54),
          border: Border.all(
              color: const Color.fromARGB(255, 255, 68, 140), width: 2),
          borderRadius: BorderRadius.circular(2),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10.0,
            )
          ],
          gradient: LinearGradient(colors: [Colors.red, Colors.yellow])),
      child: Text(
        "Hi Flutter",
        style: TextStyle(
            color: const Color.fromARGB(255, 59, 196, 255), fontSize: 20),
      ),
    ));
  }
}

class MyBottom extends StatelessWidget {
  const MyBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 40,
      margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
      // padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      child: Text(
        "Bottom",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 59, 59),
      ),
      child: Text(
        "Lebron James",
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis, //超過顯示...
        maxLines: 1, //行數限制
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w900, //粗體字
          fontStyle: FontStyle.italic, //斜體字
          letterSpacing: 2, //字間距
          decoration: TextDecoration.underline, //底線
          decorationColor: const Color.fromARGB(31, 0, 0, 0), //底線顏色
          decorationStyle: TextDecorationStyle.dashed, //底線風格
        ),
      ),
    );
  }
}
