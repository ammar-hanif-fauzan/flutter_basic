import 'package:flutter/material.dart';

void main(List<String> args) {
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
          title: const Text('Image'),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 500,
            color: Colors.amber,
            // ================= Cara 1 ================
            // child: const Image(
            //   fit: BoxFit.cover, // cover = seluruh, contain = max h atau w
            //   // image: AssetImage('images/inazuma.jpg'), // Asset Images
            //   image: NetworkImage('https://picsum.photos/200/400'), // Network
            // ),
            // ================ Cara 2 ==================
            child: Image.asset('images/inazuma.jpg'),
          ),
        ),
      ),
    );
  }
}
