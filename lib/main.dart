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
      home: DefaultTabController(
        initialIndex: 2,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tab Bar'),
            centerTitle: true,
            bottom: const TabBar(
              labelColor: Colors.red,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w300,
              ),
              // indicatorColor: Colors.black,
              // indicatorPadding: EdgeInsets.all(10),
              // indicatorWeight: 5,
              indicator: BoxDecoration(
                color: Colors.amber,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 10,
                  ),
                ),
              ),
              tabs: [
                Tab(
                  text: 'Home',
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.person_add),
                ),
                Tab(
                  text: 'Setting',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text(
                  "Tab Home",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Tab Invite User",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Tab Setting",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
