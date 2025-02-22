// 23 Flutter ICON 圖標、自帶圖標和自訂義圖標 (27:33)

import 'package:flutter/material.dart';
import './font.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.yellow,
    ),
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 147, 64, 255),
        title: Text("Hello Flutter"),
      ),
      body: Column(children: [
        MyApp(),
      ]),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: const [
          Icon(Icons.search, color: Colors.red, size: 40),
          SizedBox(height: 10),
          Icon(
            Icons.home,
            size: 40,
            color: Colors.red,
          ),
          SizedBox(height: 10),
          Icon(Icons.settings),
          SizedBox(height: 10),
          Icon(Icons.search),
          SizedBox(height: 10),
          Icon(Icons.shape_line),
          SizedBox(height: 10),
          Icon(
            Icons.category,
            size: 60,
            color: Color.fromARGB(255, 59, 255, 180),
          ),
          SizedBox(height: 10),
          Icon(MyFont.basketball, size: 60, color: Colors.orange),
        ],
      ),
    );
  }
}
