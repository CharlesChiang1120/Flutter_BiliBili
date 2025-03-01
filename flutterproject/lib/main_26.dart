// 26 Flutter Flutter GridViewr 及動態 GridView詳解 (35:18)

import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 252, 185, 60),
          title: Text("Flutter Grid",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        body: Column(children: [
          Expanded(
            child: HomePage(),
          ),
        ]),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  // @override
  // Widget build(BuildContext context) {
  //   return GridView.count(
  //     crossAxisCount: 3,
  //     children: const [
  //       Icon(Icons.home, size: 40, color: Colors.blue),
  //       Icon(Icons.business, size: 40, color: Colors.red),
  //       Icon(Icons.school, size: 40, color: Colors.green),
  //       Icon(Icons.flight, size: 40, color: Colors.orange),
  //       Icon(Icons.shopping_cart, size: 40, color: Colors.purple),
  //       Icon(Icons.directions_car, size: 40, color: Colors.teal),
  //       Icon(Icons.fastfood, size: 40, color: Colors.brown),
  //       Icon(Icons.sports_basketball, size: 40, color: Colors.indigo),
  //       Icon(Icons.music_note, size: 40, color: Colors.pink),
  //     ],
  //   );
  // }
  // @override
  // Widget build(BuildContext context) {
  //   return GridView.extent(
  //     maxCrossAxisExtent: 180,
  //     children: const [
  //       Icon(Icons.home, size: 40, color: Colors.blue),
  //       Icon(Icons.business, size: 40, color: Colors.red),
  //       Icon(Icons.school, size: 40, color: Colors.green),
  //       Icon(Icons.flight, size: 40, color: Colors.orange),
  //       Icon(Icons.shopping_cart, size: 40, color: Colors.purple),
  //       Icon(Icons.directions_car, size: 40, color: Colors.teal),
  //       Icon(Icons.fastfood, size: 40, color: Colors.brown),
  //       Icon(Icons.sports_basketball, size: 40, color: Colors.indigo),
  //       Icon(Icons.music_note, size: 40, color: Colors.pink),
  //     ],
  //   );
  // }

  // List<Widget> _initGridViewData() {
  //   List<Widget> tmpList = [];
  //   for (var i = 0; i < 12; i++) {
  //     tmpList.add(Container(
  //       alignment: Alignment.center,
  //       decoration: BoxDecoration(color: Colors.cyan),
  //       child: Text("$i element", style: const TextStyle(fontSize: 20)),
  //     ));
  //   }
  //   return tmpList;
  // }

  // List<Widget> _initGridViewData() {
  //   var tmpList = listData.map((value) {
  //     return Container(
  //       decoration: BoxDecoration(
  //           border: Border.all(
  //         color: const Color.fromARGB(255, 0, 0, 0),
  //       )),
  //       child: Column(
  //         children: [
  //           ClipRRect(
  //             borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
  //             child: SizedBox(
  //               width: double.infinity,
  //               height: 50,
  //               child: Image.network(
  //                 value["logoURL"],
  //                 fit: BoxFit.cover,
  //               ),
  //             ),
  //           ),
  //           Text(
  //             value["company"],
  //             style: const TextStyle(
  //               fontSize: 20,
  //             ),
  //           ),
  //         ],
  //       ),
  //       // leading: SizedBox(
  //       //   width: 50,
  //       //   height: 50,
  //       //   child: Image.network(
  //       //     "${value["logoURL"]}",
  //       //     fit: BoxFit.contain,
  //       //   ),
  //       // ),
  //       // title: Text("${value["company"]}"),
  //       // subtitle: Text("${value["founder"]}"),
  //     );
  //   });
  //   return tmpList.toList();
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return GridView.count(
  //     padding: EdgeInsets.all(10),
  //     crossAxisSpacing: 10,
  //     mainAxisSpacing: 10,
  //     crossAxisCount: 2,
  //     childAspectRatio: 1,
  //     children: _initGridViewData(),
  //   );
  // }
  // @override
  // Widget build(BuildContext context) {
  //   return GridView.extent(
  //     padding: EdgeInsets.all(10),
  //     crossAxisSpacing: 10,
  //     mainAxisSpacing: 10,
  //     maxCrossAxisExtent: 120,
  //     childAspectRatio: 1.2,
  //     children: _initGridViewData(),
  //   );
  // }

  Widget _initGridViewData(contex, index) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: const Color.fromARGB(255, 0, 0, 0),
      )),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: Image.network(
                listData[index]["logoURL"],
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            listData[index]["company"],
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: listData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemBuilder: _initGridViewData,
    );
  }
}
