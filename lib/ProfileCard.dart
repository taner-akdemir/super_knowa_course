import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name, image;

  const ProfileCard({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(35),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(image),
                  ),
                ),
              ),

              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.white),
                ),
              ),
            ],
          ),

          SizedBox(height: 5),
          Text(name, style: TextStyle(fontSize: 15, color: Colors.black)),
        ],
      ),
    );
  }
}
