// ignore_for_file: avoid_print

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List<Container> myList = List.generate(
    50,
    (index) {
      return Container(
        color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256),
            Random().nextInt(256)),
      );
    },
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Grid View'),
          backgroundColor: Colors.amber,
        ),
        // =================== Cara 1 =====================
        // body: GridView(
        //   padding: const EdgeInsets.all(10),
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 3,
        //       crossAxisSpacing: 10,
        //       mainAxisSpacing: 10,
        //       childAspectRatio: 1 / 1),
        //   children: myList,
        // ),
        // ==================== Cara 2 ====================
        body: GridView.count(
          padding: const EdgeInsets.all(10),
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1 / 1,
          children: myList,
        ),
      ),
    );
  }
}
