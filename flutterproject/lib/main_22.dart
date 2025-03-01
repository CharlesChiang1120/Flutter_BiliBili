// 22 Flutter 圖片組件 - Image、本地圖片、遠程圖片、圖片剪切 (28:50)

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
      ),
      body: Column(children: [
        MyApp(),
        SizedBox(
          height: 20,
        ),
        Circular(),
        SizedBox(
          height: 20,
        ),
        ClipImage(),
        SizedBox(
          height: 20,
        ),
        LocalImage()
      ]),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
      // alignment: Alignment.centerLeft,
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.yellow,
      ),
      child: Image.network(
        "https://images.pexels.com/photos/29195423/pexels-photo-29195423.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        // scale: 2,
        // alignment: Alignment.centerLeft,
        fit: BoxFit.cover,
        // repeat: ImageRepeat.repeat,
        // width: 100,
        // height: 100,
      ),
    ));
  }
}

class Circular extends StatelessWidget {
  const Circular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(75),
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.pexels.com/photos/29195423/pexels-photo-29195423.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              fit: BoxFit.cover)),
    );
  }
}

class ClipImage extends StatelessWidget {
  const ClipImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        "https://images.pexels.com/photos/29195423/pexels-photo-29195423.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        width: 150,
        height: 150,
        alignment: Alignment.bottomCenter,
        fit: BoxFit.cover,
      ),
    );
  }
}

class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      // decoration: const BoxDecoration(
      //   color: Colors.amber,
      // ),
      child: Image.asset("images/lebron.jpeg"),
    );
  }
}
