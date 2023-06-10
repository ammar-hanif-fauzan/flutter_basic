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
        body: Container(
          color: Colors.white,
          child: const Center(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                  decorationColor: Colors.amber,
                ),
                showCursor: true, // menampilkan cursor pada form input
                cursorColor: Colors.black,
                cursorWidth: 10, // lebar cursor
                cursorHeight: 20, // tinggi cursor
                // cursorRadius: Radius.circular(10.0), // cursor memiliki radius

                textAlign: TextAlign.start, // text align horizontal
                textAlignVertical: TextAlignVertical.center, // vertical
                textCapitalization: TextCapitalization.words, //huruh depan 'Ab'

                decoration: InputDecoration(
                    icon: Icon(
                      Icons.flare,
                      color: Colors.amber,
                      size: 30,
                    ),
                    border: OutlineInputBorder(), // border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amber,
                      ),
                    ), //ketika border fokus
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ), //ketika border tidak fokus

                    // prefixIcon: Icon(Icons.person), //icon dalam border depan
                    suffixIcon: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.remove_red_eye),
                    ), //icon dalam border blakang & fungsi utk password

                    prefixText: '+62 ', // prefix text
                    labelText: 'ini label', //bisa jadi place holder juga
                    focusColor: Colors.white,
                    hintText: '812 xxxxxxxx', // ini place holder
                    hintStyle: TextStyle(
                      color: Colors.red, //place holder warna merah
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
