// ignore_for_file: avoid_print, file_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController myController = TextEditingController();

  String hasil = "Hasil Input";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Field'),
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    controller: myController, // auto fill
                    onChanged: (value) {
                      print(value);
                    },
                    onSubmitted: (value) {
                      print('submited :$value');
                      setState(() {
                        hasil = value;
                      });
                    },
                    onEditingComplete: () {
                      print('Input Complete');
                    },
                  ),
                  Text(hasil)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
