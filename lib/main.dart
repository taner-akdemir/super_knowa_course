import 'package:flutter/material.dart';

import 'ProfileCard.dart';
import 'ShareCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SKC',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> profiles = [
      {
        "name": "Ali",
        "image":
            "https://cdn.pixabay.com/photo/2024/08/13/08/52/ai-generated-8965482_1280.jpg",
      },
      {
        "name": "Osman",
        "image":
            "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_1280.jpg",
      },
      {
        "name": "Rıza",
        "image":
            "https://cdn.pixabay.com/photo/2016/03/26/22/13/man-1281562_1280.jpg",
      },
      {
        "name": "Ali",
        "image":
            "https://cdn.pixabay.com/photo/2024/08/13/08/52/ai-generated-8965482_1280.jpg",
      },
      {
        "name": "Osman",
        "image":
            "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_1280.jpg",
      },
      {
        "name": "Rıza",
        "image":
            "https://cdn.pixabay.com/photo/2016/03/26/22/13/man-1281562_1280.jpg",
      },
      {
        "name": "Ali",
        "image":
            "https://cdn.pixabay.com/photo/2024/08/13/08/52/ai-generated-8965482_1280.jpg",
      },
      {
        "name": "Osman",
        "image":
            "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_1280.jpg",
      },
      {
        "name": "Rıza",
        "image":
            "https://cdn.pixabay.com/photo/2016/03/26/22/13/man-1281562_1280.jpg",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.grey,
          iconSize: 32,
        ),
        title: Text(
          "Social World",
          style: TextStyle(fontSize: 20, color: Colors.grey),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            color: Colors.purple,
            iconSize: 32,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 3),
                  blurRadius: 5,
                ),
              ],
            ),
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: profiles.length,
              itemBuilder: (BuildContext context, int index) {
                Map<String, dynamic> profile = profiles[index];
                return ProfileCard( name: profile["name"], image: profile["image"]);
              },
            ),
          ),
          SizedBox(height: 10),
          ShareCard(),
        ],
      ),
    );
  }
}


