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
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.teal,
            bottom: const TabBar(
              indicatorColor: Colors.pink,
              tabs: [
                Tab(icon: Icon(Icons.directions_walk)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.phone_iphone)),
                Tab(icon: Icon(Icons.photo_album)),
              ],
            ),
            title: const Text('Tabs'),
            centerTitle: true,
          ),
          body: const TabBarView(
            children: [
              Icon(
                Icons.directions_walk,
                size: 400,
                color: Colors.teal,
              ),
              Icon(
                Icons.directions_bike,
                size: 400,
                color: Colors.teal,
              ),
              Icon(
                Icons.directions_car,
                size: 400,
                color: Colors.teal,
              ),
              Icon(
                Icons.phone_iphone,
                size: 400,
                color: Colors.teal,
              ),
              Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1593642632559-0c6d3fc62b89?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80'),
                fit: BoxFit.fitWidth,
              )
            ],
          ),
        ),
      ),
    );
  }
}
