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
        MyHomePage(),
      ]),
    ),
  ));
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        Icon(Icons.search, color: Color.fromARGB(255, 54, 60, 244), size: 40),
        SizedBox(height: 10),
        Icon(Icons.home, size: 40, color: Colors.red),
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
        Icon(MyFont.basketball,
            size: 60, color: Color.fromARGB(255, 51, 0, 255)),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
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

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Icon Demo')),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               Icon(Icons.search, color: Colors.red, size: 40),
//               SizedBox(height: 10),
//               Icon(Icons.home, size: 40, color: Colors.red),
//               SizedBox(height: 10),
//               Icon(Icons.settings),
//               SizedBox(height: 10),
//               Icon(Icons.search),
//               SizedBox(height: 10),
//               Icon(Icons.shape_line),
//               SizedBox(height: 10),
//               Icon(Icons.category,
//                   size: 60, color: Color.fromARGB(255, 59, 255, 180)),
//               SizedBox(height: 10),
//               Icon(Icons.sports_basketball,
//                   size: 60, color: Colors.orange), // 用內建圖示替代
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
