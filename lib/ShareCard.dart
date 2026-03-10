import 'package:flutter/material.dart';

class ShareCard extends StatelessWidget {
  const ShareCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: EdgeInsets.all(15),
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
                          "https://cdn.pixabay.com/photo/2016/03/26/22/13/man-1281562_1280.jpg",
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
                        "Rıza",
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
                "Resim açıklaması",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              SizedBox(height: 20),
              Image.network(
                "https://cdn.pixabay.com/photo/2016/03/26/22/13/man-1281562_1280.jpg",
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  CustomIconButton(text: "Beğen", icon: Icons.favorite),
                  CustomIconButton(text: "Yorum Yap", icon: Icons.comment),
                  CustomIconButton(text: "Paylaş", icon: Icons.share),
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
  const CustomIconButton({
    super.key, required this.text, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: (){},
        child: Container(
          padding: EdgeInsets.all(6),
          child: Row(
            children: [
              Icon(icon, color: Colors.grey),
              SizedBox(width: 4,),
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
