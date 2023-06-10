// ignore_for_file: must_be_immutable, file_names, avoid_print
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List<Map<String, dynamic>> myList = [
    {
      'Name': 'Daban',
      'Age': '26',
      'Color': [
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber'
      ]
    },
    {
      'Name': 'Frozen',
      'Age': '25',
      'Color': ['orange', 'yellow', 'amber']
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Map List'),
        ),
        body: ListView(
          children: myList.map(
            (data) {
              List colors = data['Color'];
              print("------------");
              return Card(
                margin: const EdgeInsets.all(20),
                color: Colors.grey[100],
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Name: ${data['Name']}'),
                              Text('Age: ${data['Age']}'),
                            ],
                          ),
                        ],
                      ),
                      // Fav Color
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: colors.map(
                            (color) {
                              return Container(
                                color: Colors.amber,
                                margin: const EdgeInsets.symmetric(
                                  vertical: 15,
                                  horizontal: 8,
                                ),
                                padding: const EdgeInsets.all(10),
                                child: Text(color),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
