// 24 Flutter ListView - 列表組件、普通列表、ICON 列表、圖文列表、可以滑動的水平列表 (33:27)

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 244, 28, 28),
        title: const Text("NBA Player",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Expanded(
            // ✅ 確保 ListView 佔據剩餘空間，可正常滾動
            child: MyHomePage(),
          ),
        ],
      ),
    ),
  ));
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: <Widget>[
        _buildPlayerCard(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP4dilYSi6x35FFmLZk4F9a6U0mXRosF17iQ&s",
          "Steph Curry Behind the back",
        ),
        _buildPlayerCard(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQic84Ya_-tQGTH3YK6DuHXOWDxUh7C_5JZvg&s",
          "Ja Morant GANG",
        ),
        _buildPlayerCard(
          "https://live.staticflickr.com/5229/5831140504_601d072eae.jpg",
          "LeBron James Cry",
        ),
        _buildPlayerCard(
          "https://i.imgur.com/H96grEL.jpg",
          "Nikola Jokić",
        ),
        _buildPlayerCard(
          "https://athlonsports.com/.image/t_share/MjAzMDAyNjgxMjQ0MDAxNDYy/jordanpooleslip.jpg",
          "Jordan Poole flops",
        ),
      ],
    );
  }

  Widget _buildPlayerCard(String imageUrl, String name) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10), // ✅ 讓圖片有圓角
          child: Image.network(
            imageUrl,
            height: 300, // ✅ 統一圖片高度
            width: double.infinity, // ✅ 讓圖片滿版
            fit: BoxFit.cover, // ✅ 確保圖片不變形
          ),
        ),
        SizedBox(height: 10), // ✅ 讓文字與圖片保持距離
        Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20), // ✅ 讓每個球員資訊間隔一致
      ],
    );
  }
}
