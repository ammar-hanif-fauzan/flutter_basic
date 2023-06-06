import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // supaya diatas tidak muncul tulisan debug disebelah kanan atas
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('My First Basic Widget Apps'),
        ),
        body: Center(
          child: Text('Halo'),
        ),
      ),
    );
  }
}
