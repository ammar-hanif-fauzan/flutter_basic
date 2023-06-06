import 'package:flutter/material.dart';
import 'package:flutter_1/main%20text-widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Visible & Invisible'),
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

        // ==================== Column ==================
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
        // ================== End of Stack ==================
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
