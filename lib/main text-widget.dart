// ignore_for_file: prefer_const_constructors

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
          title: Text('Text Widget'),
        ),
        body: Center(
          child: Text(
            'Halo Dummy text generator',
            maxLines: 2,
            overflow: TextOverflow
                .ellipsis, // jika tulisan yang terlalu banyak setelah maxLines, akan memberi titik tiga diakhir text
            textAlign: TextAlign.center,
            style:
                TextStyle(color: Colors.white, backgroundColor: Colors.amber),
          ),
        ),
      ),
    );
  }
}
