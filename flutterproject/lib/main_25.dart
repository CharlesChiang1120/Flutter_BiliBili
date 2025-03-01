// 25 Flutter ListView - 動態列表組件、以及循環動態數據 (24:43)

import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 252, 185, 60),
        title: Text("Seven biggest US companies",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: Column(children: [
        Expanded(
          child: MyHomePage(),
        ),
      ]),
    ),
  ));
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key}) {
    print(listData);
  }

  // List<Widget> _initListData() {
  //   List<Widget> list = [];
  //   for (var i = 0; i < 20; i++) {
  //     list.add(ListTile(title: Text("list list $i")));
  //   }
  //   return list;
  // }

  List<Widget> _initListData() {
    var tmpList = listData.map((value) {
      return ListTile(
        leading: SizedBox(
          width: 50,
          height: 50,
          child: Image.network(
            "${value["logoURL"]}",
            fit: BoxFit.contain,
          ),
        ),
        title: Text("${value["company"]}"),
        subtitle: Text("${value["founder"]}"),
      );
    });
    return tmpList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: _initListData());
  }
}
