import 'package:flutter/material.dart';

class ShareCard extends StatelessWidget {
  final String profileImagePath, image, name, content;
  const ShareCard({super.key, required this.image, required this.name, required this.profileImagePath, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.indigo,
                      image: DecorationImage(
                        image: NetworkImage(
                            profileImagePath
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "1 saat önce",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Icon(Icons.more_vert),
                ],
              ),
              SizedBox(height: 15),
              Text(
                content,
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              SizedBox(height: 20),
              Image.network(
               image,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 1,
                    child: CustomIconButton(
                      text: "Beğen",
                      icon: Icons.favorite,
                      callback: () {
                        debugPrint("beğen");
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomIconButton(
                      text: "Yorum Yap",
                      icon: Icons.comment,
                      callback: () {
                        debugPrint("yorum");
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextButton.icon(
                      onPressed: () {
                        debugPrint("paylaş");
                      },
                      icon: Icon(Icons.share), label: Text("Paylaş"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function() callback;

  const CustomIconButton({
    super.key,
    required this.text,
    required this.icon,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () {
          callback();
        },
        child: Container(
          padding: EdgeInsets.all(6),
          child: Row(
            children: [
              Icon(icon, color: Colors.grey),
              SizedBox(width: 4),
              Text(
                text,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
