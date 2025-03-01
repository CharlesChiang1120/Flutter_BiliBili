// 24 Flutter ListView - 列表組件、普通列表、ICON 列表、圖文列表、可以滑動的水平列表 (33:27)

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 228, 41, 172),
        title: const Text(
          "MOMO",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
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
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(10),
      children: <Widget>[
        _buildProductItem(
          "https://i3.momoshop.com.tw/1692989638/goodsimg/0008/409/560/8409560_OR_m.webp",
          "WOAWOA 零重力足弓3D減壓鞋墊│單雙(久站鞋墊 除臭鞋墊 足弓鞋墊 運動鞋墊 矯正鞋墊 8409560)",
        ),
        _buildProductItem(
          "https://i2.momoshop.com.tw/1738990920/goodsimg/0012/028/429/12028429_R.webp",
          "LANCOME 蘭蔻 小黑瓶100ml(買一送一/超未來肌因賦活露國際航空版)",
        ),
        _buildProductItem(
          "https://i4.momoshop.com.tw/1739854965/goodsimg/0010/344/399/10344399_R.webp",
          "Simply 新普利 新普利超濃代謝夜酵素錠EX30顆 /夜間代謝酵素升級版",
        ),
        _buildProductItem(
          "https://i1.momoshop.com.tw/1692720579/goodsimg/0006/480/519/6480519_R.webp",
          "理膚寶水 溫泉舒緩噴液 300ml(舒緩肌膚)",
        ),
        _buildProductItem(
          "https://i4.momoshop.com.tw/1740039242/goodsimg/0013/729/804/13729804_R.webp",
          "MSI 微星 GeForce RTX 5070 Ti 16G GAMING TRIO OC PLUS 顯示卡",
        ),
        _buildProductItem(
          "https://i1.momoshop.com.tw/1740015365/goodsimg/0009/916/394/9916394_R.webp",
          "Le Creuset BIS琺瑯鑄鐵鍋圓鍋 22cm(2.6L淺鍋 錦葵紫/雪紡粉/海軍藍/礦石藍/櫻桃紅/海洋之花 6色選1)",
        ),
        _buildProductItem(
          "https://i3.momoshop.com.tw/1733746604/goodsimg/0013/396/517/13396517_R.webp",
          "張忠謀自傳全集（上下冊）【精美套書書盒版】",
        ),
        _buildProductItem(
          "https://i3.momoshop.com.tw/1738658803/goodsimg/0012/836/521/12836521_R.webp",
          "HITACHI 日立 7-9坪一級變頻冷暖雙吹式窗型冷氣(RA-50HV1)",
        ),
      ],
    );
  }

  /// 建立「商品卡片」，上方顯示圖片、下方顯示文字
  Widget _buildProductItem(String imageUrl, String productName) {
    return Container(
      margin: const EdgeInsets.only(right: 10), // 圖片之間的間隔
      child: Column(
        children: [
          // 商品圖片
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.cover, // 填滿且不變形
            ),
          ),
          const SizedBox(height: 6), // 圖片與文字之間的距離
          // 商品名稱 (若過長則顯示省略號)
          SizedBox(
            width: 100, // 限制文字寬度，避免超出
            child: Text(
              productName,
              maxLines: 1, // ✅ 只顯示一行
              overflow: TextOverflow.ellipsis, // ✅ 超出部分用「…」省略
              style: const TextStyle(fontSize: 14),
              textAlign: TextAlign.center, // ✅ 讓文字置中
            ),
          ),
        ],
      ),
    );
  }
}
