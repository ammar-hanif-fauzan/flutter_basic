import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // deklarasi variable
  List<Widget> myList = [
    Container(
      width: 300,
      height: 300,
      color: Colors.red,
    ),
    Container(
      width: 300,
      height: 300,
      color: Colors.green,
    ),
    Container(
      width: 300,
      height: 300,
      color: Colors.blue,
    ),
    Container(
      width: 300,
      height: 300,
      color: Colors.amber,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('List View'),
          ),
          body: ListView(
            // scrollDirection:
            //     Axis.horizontal, // tergantung direction width dan heightnya
            children: myList,
          )),
    );
  }
}
