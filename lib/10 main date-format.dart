// ignore_for_file: must_be_immutable, file_names
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
          title: const Text('Date Format'),
        ),
        body: Center(
          child: Text(
            DateFormat.d().format(DateTime.now()),
          ),
        ),
      ),
    );
  }
}
