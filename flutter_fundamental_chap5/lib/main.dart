import 'package:flutter/material.dart';
import 'animated_container_page.dart';
import 'hero.dart';
import 'sliver_list_page.dart';
import 'sliver_page.dart';

void main() => runApp(MyApp());

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
      home: SliverListPage(),
    );
  }
}

// For Radio & RadioListTile
// enum Gender { MAN, WOMAN }

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GestureDetector'),
      ),
      body:
          // Event (GestureDetector & InkWell)
          Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              print('GestureDetector Click!!');
            },
            child: Text('Click Me!!'),
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              print('InkWell Click!!');
            },
            child: Text('Click Me!!'),
          ),
        ],
      ),
      // Until TimePicker
      // Column(
      //   children: <Widget>[
      //     ElevatedButton(
      //       onPressed: () {
      //         Future<TimeOfDay?> selectedTime = showTimePicker(
      //           initialTime: TimeOfDay.now(),
      //           context: context,
      //         );

      //         selectedTime.then((timeOfDay) {
      //           setState(() {
      //             _selectedTime = '${timeOfDay!.hour}:${timeOfDay.minute}';
      //           });
      //         });
      //       },
      //       child: Text('Time Picker'),
      //     ),
      //     Text('$_selectedTime'),
      //   ],
      // ),
    );
  }

  // DateTime? _selectedTime;

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('DatePicker'),
  //     ),
  //     body: Column(
  //       children: <Widget>[
  //         ElevatedButton(
  //           onPressed: () {
  //             Future<DateTime?> selectedDate = showDatePicker(
  //               context: context,
  //               initialDate: DateTime.now(), // init. value
  //               firstDate: DateTime(2021), // Start Date.
  //               lastDate: DateTime(2031), // Last Date.
  //               builder: (BuildContext context, Widget? child) {
  //                 return Theme(
  //                   data: ThemeData.dark(),
  //                   child: child as Widget,
  //                 );
  //               },
  //             );

  //             selectedDate.then((dateTime) {
  //               setState(() {
  //                 _selectedTime = dateTime as DateTime;
  //               });
  //             });
  //           },
  //           child: Text('Date Picker'),
  //         ),
  //         Text('$_selectedTime'),
  //       ],
  //     ),
  //   );
  // }

  // AlertDialog
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('AlertDialogPage'),
  //     ),
  //     body: ElevatedButton(
  //       onPressed: () {
  //         _neverSatisfied();
  //       },
  //       child: Text('Alert Dialog'),
  //     ),
  //   );
  // }

  // Future<void> _neverSatisfied() async {
  //   return showDialog<void>(
  //       context: context,
  //       barrierDismissible: false,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text('Title'),
  //           content: SingleChildScrollView(
  //             child: ListBody(
  //               children: <Widget>[
  //                 Text('This is Alert Dialog'),
  //                 Text('Press \'Ok\' to close'),
  //               ],
  //             ),
  //           ),
  //           actions: <Widget>[
  //             TextButton(
  //               child: Text('OK'),
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //               },
  //             ),
  //             TextButton(
  //               child: Text('Cancel'),
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //               },
  //             ),
  //           ],
  //         );
  //       });
  // }

  // Until DropdownButton
  // Gender _gender = Gender.MAN;
  // final _valueList = ['first', 'second', 'third'];
  // var _selectedValue = 'first';

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Dropdown Button'),
  //     ),
  //     body: DropdownButton(
  //         value: _selectedValue,
  //         items: _valueList.map(
  //           (value) {
  //             return DropdownMenuItem(
  //               value: value,
  //               child: Text(value),
  //             );
  //           },
  //         ).toList(),
  //         onChanged: (value) {
  //           setState(() {
  //             _selectedValue = value as String;
  //           });
  //         }),
  //   );
  // }

  // Radio / RadioListTile
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Radio / RadioListTile'),
  //     ),
  //     body: Padding(
  //       padding: const EdgeInsets.all(8.0),
  //       child: Center(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           crossAxisAlignment: CrossAxisAlignment.center,
  //           children: <Widget>[
  //             ListTile(
  //               title: Text('MAN'),
  //               leading: Radio(
  //                   value: Gender.MAN,
  //                   groupValue: _gender,
  //                   onChanged: (value) {
  //                     setState(() {
  //                       _gender = value as Gender;
  //                     });
  //                   }),
  //             ),
  //             ListTile(
  //               title: Text('WOMAN'),
  //               leading: Radio(
  //                   value: Gender.WOMAN,
  //                   groupValue: _gender,
  //                   onChanged: (value) {
  //                     setState(() {
  //                       _gender = value as Gender;
  //                     });
  //                   }),
  //             ),
  //             SizedBox(
  //               height: 40,
  //             ),
  //             RadioListTile(
  //               title: Text('MAN'),
  //               value: Gender.MAN,
  //               groupValue: _gender,
  //               onChanged: (value) {
  //                 setState(() {
  //                   _gender = value as Gender;
  //                 });
  //               },
  //             ),
  //             RadioListTile(
  //               title: Text('WOMAN'),
  //               value: Gender.WOMAN,
  //               groupValue: _gender,
  //               onChanged: (value) {
  //                 setState(() {
  //                   _gender = value as Gender;
  //                 });
  //               },
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
}

  // For Checkbox / Radio Switch
  // var _isChecked = false;

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Checkbox / Radio / Switch'),
  //     ),
  //     body: Padding(
  //       padding: const EdgeInsets.all(8.0),
  //       child: Center(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: <Widget>[
  //             Checkbox(
  //               value: _isChecked,
  //               onChanged: (value) {
  //                 setState(() {
  //                   _isChecked = value!;
  //                 });
  //               },
  //             ),
  //             SizedBox(
  //               height: 40,
  //             ),
  //             Switch(
  //               value: _isChecked,
  //               onChanged: (value) {
  //                 setState(() {
  //                   _isChecked = value;
  //                 });
  //               },
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
  //}
