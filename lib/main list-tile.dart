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
          title: const Text('List Tile'),
        ),
        body: ListView(
          children: const [
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              title: Text('Daban'),
              subtitle: Text(
                'Message... Message...Message...Message...Message...Message...Message...Message...Message...Message...',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: Text('Daban'),
              subtitle: Text(
                'Message...',
                maxLines: 2,
              ),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: Text('Daban'),
              subtitle: Text(
                'Message...',
                maxLines: 2,
              ),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
