import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('제목'),
      ),
      body:
          // Column(
          //   children: <Widget>[
          //     Container(
          //       color: Colors.red,
          //       width: 100,
          //       height: 100,
          //       padding: const EdgeInsets.all(8.0),
          //       margin: const EdgeInsets.all(8.0),
          //     ),
          //     Container(
          //       color: Colors.green,
          //       width: 100,
          //       height: 100,
          //       padding: const EdgeInsets.all(8.0),
          //       margin: const EdgeInsets.all(8.0),
          //     ),
          //     Container(
          //       color: Colors.blue,
          //       width: 100,
          //       height: 100,
          //       padding: const EdgeInsets.all(8.0),
          //       margin: const EdgeInsets.all(8.0),
          //     )
          //   ],
          // )
          // Row(
          //   mainAxisSize: MainAxisSize.max, // 가로로 꽉 채우기
          //   mainAxisAlignment: MainAxisAlignment.center, // 가로 방향으로 가운데 정렬하기
          //   crossAxisAlignment: CrossAxisAlignment.center, // 세로 방향으로 가운데 정렬
          //   children: <Widget>[
          //     Container(
          //       color: Colors.red,
          //       width: 100,
          //       height: 100,
          //       padding: const EdgeInsets.all(8.0),
          //       margin: const EdgeInsets.all(8.0),
          //     ),
          //     Container(
          //       color: Colors.green,
          //       width: 100,
          //       height: 100,
          //       padding: const EdgeInsets.all(8.0),
          //       margin: const EdgeInsets.all(8.0),
          //     ),
          //     Container(
          //       color: Colors.blue,
          //       width: 100,
          //       height: 100,
          //       padding: const EdgeInsets.all(8.0),
          //       margin: const EdgeInsets.all(8.0),
          //     ),
          //   ],
          // ),
          Stack(children: <Widget>[
        Container(
          color: Colors.red,
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(8.0),
        ),
        Container(
          color: Colors.green,
          width: 80,
          height: 80,
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(8.0),
        ),
        Container(
          color: Colors.blue,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(8.0),
        ),
      ]),
    );
  }
}
