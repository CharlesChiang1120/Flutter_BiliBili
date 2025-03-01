// 23 Flutter ICON 圖標、自帶圖標和自訂義圖標 (27:33)

import 'package:flutter/material.dart';
import './font.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 244, 28, 28),
        title: Text("Breaking News",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: Column(children: [
        MyHomePage(),
      ]),
    ),
  ));
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       // 要加 shrinkWrap 不然顯示不出來!?
//       shrinkWrap: true,
//       children: <Widget>[
//         ListTile(leading: Icon(Icons.home), title: Text("Home Page")),
//         // TODO 分割線
//         Divider(),
//         ListTile(
//           leading: Icon(Icons.assessment,
//               color: const Color.fromARGB(255, 238, 222, 40)),
//           title: Text("Order"),
//         ),
//         Divider(),
//         ListTile(
//           leading:
//               Icon(Icons.favorite, color: const Color.fromARGB(255, 225, 8, 8)),
//           title: Text("Favorite"),
//         ),
//         Divider(),
//         ListTile(
//           leading: Icon(Icons.people, color: Colors.black),
//           title: Text("Support"),
//           // TODO 最後面會有箭頭
//           trailing: Icon(Icons.chevron_right_sharp),
//         ),
//         Divider(),
//       ],
//     );
//   }
// }

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: SizedBox(
            width: 100, // 設定固定寬度
            height: 80, // 設定固定高度
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8), // 圖片圓角，讓畫面更精緻
              child: Image.network(
                "https://static01.nyt.com/images/2025/02/28/multimedia/28ukraine-assess-1-fwpb/28ukraine-assess-1-fwpb-superJumbo.jpg?quality=75&auto=webp",
                fit: BoxFit.cover, // 確保圖片填滿
              ),
            ),
          ),
          title: Text(
            "Zelensky’s Gamble: A Diplomatic Play with Trump",
            maxLines: 2, // 限制最多 2 行，避免換行過多
            overflow: TextOverflow.ellipsis, // 超過字數顯示 "..."
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          // subtitle: Text(
          //   "Talks end in failure",
          //   style: TextStyle(color: Colors.grey[600], fontSize: 14),
          // ),
        ),
        Divider(),
        ListTile(
          leading: SizedBox(
            width: 100, // 設定固定寬度
            height: 80, // 設定固定高度
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8), // 圖片圓角，讓畫面更精緻
              child: Image.network(
                "https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2156850318.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp",
                fit: BoxFit.cover, // 確保圖片填滿
              ),
            ),
          ),
          title: Text(
            "Luka Doncic breaks silence following trade from Dallas Mavericks: ‘I wanted so badly to bring you a championship’",
            maxLines: 2, // 限制最多 2 行，避免換行過多
            overflow: TextOverflow.ellipsis, // 超過字數顯示 "..."
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Divider(),
        ListTile(
          leading: SizedBox(
            width: 100, // 設定固定寬度
            height: 80, // 設定固定高度
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                "https://media.cnn.com/api/v1/images/stellar/prod/2025-01-07t042424z-1491148143-rc2s4ca7ap4f-rtrmadp-3-tech-ces-nvidia.JPG?c=16x9&q=h_653,w_1160,c_fill/f_webp",
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            "Nvidia doubled profits in 2024. And its outlook is rosy despite AI jitters",
            maxLines: 2, // 限制最多 2 行，避免換行過多
            overflow: TextOverflow.ellipsis, // 超過字數顯示 "..."
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Divider(),
        ListTile(
          leading: SizedBox(
            width: 100, // 設定固定寬度
            height: 80, // 設定固定高度
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                "https://media.cnn.com/api/v1/images/stellar/prod/still-21402294-12943-386091127097-still.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp",
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            "A little-known Chinese company made a drug that beat the world/'s biggest-selling medicines",
            maxLines: 2, // 限制最多 2 行，避免換行過多
            overflow: TextOverflow.ellipsis, // 超過字數顯示 "..."
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Divider(),
        ListTile(
          leading: SizedBox(
            width: 100, // 設定固定寬度
            height: 80, // 設定固定高度
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                "https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-1880770560.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp",
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            "Taiwan says China set up ‘live-fire training’ zone off its coast without warning",
            maxLines: 2, // 限制最多 2 行，避免換行過多
            overflow: TextOverflow.ellipsis, // 超過字數顯示 "..."
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Divider(),
        ListTile(
          leading: SizedBox(
            width: 100, // 設定固定寬度
            height: 80, // 設定固定高度
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                "https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-1913165257.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp",
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            "World’s largest chipmaker TSMC to build a second factory in Japan",
            maxLines: 2, // 限制最多 2 行，避免換行過多
            overflow: TextOverflow.ellipsis, // 超過字數顯示 "..."
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Divider(),
        ListTile(
          leading: SizedBox(
            width: 100, // 設定固定寬度
            height: 80, // 設定固定高度
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                "https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2184830367-copy.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp",
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            "Tesla recalls 380,000 vehicles in US over power steering assist issue",
            maxLines: 2, // 限制最多 2 行，避免換行過多
            overflow: TextOverflow.ellipsis, // 超過字數顯示 "..."
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        )
      ],
    );
  }
}
