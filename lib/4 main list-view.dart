// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // ============================ Variable ================================
  // deklarasi variable 1 <Widget> lebih fleksibel untuk widget lebih dari 1
  // daripada spesifik <Container>, karena didalamnya harus widget Container
  // List<Widget> myList = [
  //   Container(
  //     width: 300,
  //     height: 300,
  //     color: Colors.red,
  //   ),
  //   Container(
  //     width: 300,
  //     height: 300,
  //     color: Colors.green,
  //   ),
  //   Container(
  //     width: 300,
  //     height: 300,
  //     color: Colors.blue,
  //   ),
  //   Container(
  //     width: 300,
  //     height: 300,
  //     color: Colors.amber,
  //   ),
  // ];

  List<Color> myColor = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.amber,
  ];

  final List<Widget> myNumber = List.generate(
    100,
    (index) => Text(
      "${index + 1}",
      style: TextStyle(
        fontSize: 20 + double.parse(index.toString()),
      ),
    ),
  );

  // ============================= End of Variable ========================
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List View'),
        ),
        // ==================== myList ======================
        // body: ListView(
        //   // scrollDirection: Axis.horizontal,
        //   // tergantung direction width dan heightnya
        //   children: myList,
        // )
        // ==================== End of myList ================
        // ==================== myColor ======================
        // body: ListView.builder(
        //   itemCount: myColor.length,
        //   itemBuilder: (context, index) {
        //     return Container(
        //       height: 300,
        //       width: 300,
        //       color: myColor[index],
        //     );
        //   },
        // ),
        // ====================== End of myColor ==============
        // ================== myNumber ========================
        body: ListView(
          children: myNumber,
        ),
        // ================== End of myNumber =================
      ),
    );
  }
}
