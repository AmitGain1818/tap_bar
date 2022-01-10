import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarApp());
}

class TabBarApp extends StatelessWidget {
  const TabBarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_train)),
                Tab(icon: Icon(Icons.directions_walk)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.phone_iphone)),
              ],
            ),
            title: const Text('Tabs'),
            centerTitle: true,
          ),
          body: const TabBarView(
            children: [
              Icon(
                Icons.directions_train,
                size: 200,
                color: Colors.pink,
              ),
              Icon(
                Icons.directions_walk,
                size: 200,
                color: Colors.pink,
              ),
              Icon(
                Icons.directions_bike,
                size: 200,
                color: Colors.pink,
              ),
              Icon(
                Icons.directions_car,
                size: 200,
                color: Colors.pink,
              ),
              Icon(
                Icons.phone_iphone,
                size: 200,
                color: Colors.pink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
