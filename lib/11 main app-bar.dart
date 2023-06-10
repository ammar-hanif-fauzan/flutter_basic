// ignore_for_file: must_be_immutable, file_names
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
          leading: Container(
            color: Colors.amber,
          ),
          leadingWidth: 100,
          title: Container(
            // width: 10,
            height: 10,
            color: Colors.red,
          ),
          titleSpacing: 0,
          centerTitle: false,
          actions: [
            Container(
              width: 50,
              color: Colors.indigo,
            )
          ],
          flexibleSpace: Container(
            height: 20,
            color: Colors.green,
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(200),
            child: Container(
              width: 10,
              height: 40,
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}
