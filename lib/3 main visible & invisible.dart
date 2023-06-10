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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Visible & Invisible'),
        ),
        // ==================== Column ==================
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center, // ke bawah
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Container(
        //       width: 240,
        //       height: 320,
        //       color: Colors.amber[700],
        //     ),
        //     Container(
        //       width: 140,
        //       height: 240,
        //       color: Colors.orange[700],
        //     ),
        //   ],
        // ),
        // ================== End of Column ==================

        // ==================== Row ==================
        // body: Row(
        //   mainAxisAlignment: MainAxisAlignment.center, // ke samping
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Container(
        //       height: 240,
        //       width: 100,
        //       color: Colors.amber[700],
        //     ),
        //     Container(
        //       height: 140,
        //       width: 100,
        //       color: Colors.green[700],
        //     ),
        //   ],
        // ),
        // ================== End of Row ==================
        body: Stack(
          //Tumpukan tidak memiliki main atau cross axis
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.amber[700],
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green[700],
            ),
          ],
        ),
        // ================== End of Stack ==================
      ),
    );
  }
}
