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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final items = List.generate(1000, (i) => i).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('제목'),
      ),
      body: //SingleChildScrollView(
          //   child: ListBody(
          //     children: items.map((i) => Text('$i')).toList(),
          //   ),
          // ),
          //     ListView(
          //   scrollDirection: Axis.vertical,
          //   children: <Widget>[
          //     ListTile(
          //       leading: Icon(Icons.home),
          //       title: Text('Home'),
          //       trailing: Icon(Icons.navigate_next),
          //       onTap: () {},
          //     ),
          //     ListTile(
          //       leading: Icon(Icons.event),
          //       title: Text('Event'),
          //       trailing: Icon(Icons.navigate_next),
          //       onTap: () {},
          //     ),
          //     ListTile(
          //       leading: Icon(Icons.camera),
          //       title: Text('Camera'),
          //       trailing: Icon(Icons.navigate_next),
          //       onTap: () {},
          //     ),
          //   ],
          // ),
          //     GridView.count(
          //   crossAxisCount: 2,
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
          PageView(
        children: <Widget>[
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
