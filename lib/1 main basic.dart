// ignore_for_file: file_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // supaya diatas tidak muncul tulisan debug disebelah kanan atas
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('My First Basic Widget Apps'),
        ),
        body: const Center(
          child: Text('Halo'),
        ),
      ),
    );
  }
}
