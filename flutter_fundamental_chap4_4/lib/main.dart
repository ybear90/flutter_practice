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
  // AppBar, TabBar, Tab, TabBarView
  @override
  Widget build(BuildContext context) {
    // return DefaultTabController(
    //   length: 3,
    //   child: Scaffold(
    //     // body 프로퍼티를 사용하는
    //     // appBar: AppBar(
    //     //   title: Text('Tab'),
    //     //   bottom: TabBar(
    //     //     tabs: <Widget>[
    //     //       Tab(icon: Icon(Icons.tag_faces)),
    //     //       Tab(text: 'Menu2'),
    //     //       Tab(icon: Icon(Icons.info), text: 'Menu3'),
    //     //     ],
    //     //   ),
    //     // ),
    //     // body: TabBarView(
    //     //   children: <Widget>[
    //     //     Container(
    //     //       color: Colors.yellow,
    //     //     ),
    //     //     Container(
    //     //       color: Colors.orange,
    //     //     ),
    //     //     Container(
    //     //       color: Colors.red,
    //     //     ),
    //     //   ],
    //     // ),
    //     // BottomNavigationBar, body 프로퍼티를 사용하지 않는 경우
    //     bottomNavigationBar: BottomNavigationBar(items: [
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.home),
    //         label: 'Home',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.person),
    //         label: 'Profile',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.notifications),
    //         label: 'Notification',
    //       ),
    //     ]),
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text('Center'),
      ),
      body:
          // Center Example
          //     Center(
          //   child: Container(
          //     color: Colors.red,
          //     width: 100,
          //     height: 100,
          //   ),
          // ),
          // Padding Example
          //     Padding(
          //   padding: const EdgeInsets.all(40.0),
          //   child: Container(
          //     color: Colors.red,
          //   ),
          // ),
          // Align Example
          //     Align(
          //   alignment: Alignment.bottomRight,
          //   child: Container(
          //     color: Colors.red,
          //     width: 100,
          //     height: 100,
          //   ),
          // ),
          // Expanded Example
          //     Column(
          //   children: <Widget>[
          //     Expanded(
          //       flex: 2,
          //       child: Container(
          //         color: Colors.red,
          //       ),
          //     ),
          //     Expanded(
          //       child: Container(
          //         color: Colors.green,
          //       ),
          //     ),
          //     Expanded(
          //       child: Container(
          //         color: Colors.blue,
          //       ),
          //     ),
          //   ],
          // ),
          // SizedBox Example
          //     SizedBox(
          //   width: 100,
          //   height: 100,
          //   child: Container(
          //     color: Colors.red,
          //   ),
          // ),
          // Card Example
          //     Center(
          //   child: Card(
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(16.0),
          //     ),
          //     elevation: 4.0,
          //     child: Container(
          //       width: 200,
          //       height: 200,
          //     ),
          //   ),
          // ),
          // ElevatedButton Example
          //     Center(
          //   child:
          //       // ElevatedButton
          //       // ElevatedButton(
          //       //   child: Text('RaisedButton'),
          //       //   onPressed: () {
          //       //     // 실행될 코드 작성
          //       // }),
          //       // TextButton
          //       //     TextButton(
          //       //   child: Text('TextButton'),
          //       //   onPressed: () {},
          //       // ),
          //       // IconButton
          //       //     IconButton(
          //       //   icon: Icon(Icons.add),
          //       //   color: Colors.red,
          //       //   iconSize: 100.0,
          //       //   onPressed: () {},
          //       // ),
          //       // FloatingActionButton
          //       //     FloatingActionButton(
          //       //   child: Icon(Icons.add),
          //       //   onPressed: () {},
          //       // ),
          //       // Text
          //       //     Text(
          //       //   'Hello World',
          //       //   style: TextStyle(
          //       //     fontSize: 40.0,
          //       //     fontStyle: FontStyle.italic,
          //       //     fontWeight: FontWeight.bold,
          //       //     color: Colors.red,
          //       //     letterSpacing: 4.0,
          //       //   ),
          //       // ),
          //       // Image
          //       // Image.network('http://bit.ly/2Pvz4t8')),
          //       // Image assets Example
          //       // Image.asset('assets/sample.jpg')),
          //       // Icon
          //       //     Icon(
          //       //   Icons.home,
          //       //   color: Colors.red,
          //       //   size: 60.0,
          //       // ),
          // ),
          // Circular, Linear Progress Ind, CircleAvatar Example
          Column(
        children: <Widget>[
          CircularProgressIndicator(),
          LinearProgressIndicator(),
          CircleAvatar(
            child: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
