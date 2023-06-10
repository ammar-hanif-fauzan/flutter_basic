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
          title: const Text('Text Field'),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              autocorrect: true, // membenarkan kata2
              autofocus: false, // membuat form langsung terpilih
              enableSuggestions: true, // memberi sugesti kata
              enableInteractiveSelection: true, // membuat bisa copy paste form
              enabled: true, // membuat form menjadi disable jika false
              // obscureText: false, // membuat form menjadi password
              // obscuringCharacter: '*', // karakter password bisa diganti
              keyboardType: TextInputType.phone, // input type keyobard number
              readOnly: true, // membuat menjadi readonly
            ),
          ),
        ),
      ),
    );
  }
}
