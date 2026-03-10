import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String name, userName, profileImage, bgImage;

  const ProfileScreen({
    super.key,
    required this.name,
    required this.userName,
    required this.profileImage,
    required this.bgImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      //appBar: AppBar(),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(height: 230),
              Container(
                height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      bgImage,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 20,
                bottom: 0,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(width: 2, color: Colors.white),
                    color: Colors.lightBlue,
                    image: DecorationImage(
                      image: NetworkImage(
                        profileImage,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 190,
                left: 145,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      userName,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 130,
                right: 15,
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[200],
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_circle, size: 18),
                      SizedBox(width: 2),
                      Text("Takip Et"),
                    ],
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context, "returned");
                },
                icon: Icon(Icons.arrow_back, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
