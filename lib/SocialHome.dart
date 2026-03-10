import 'package:flutter/material.dart';

class SocialHome extends StatelessWidget {
  const SocialHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.black,
      width: double.infinity,
      padding: EdgeInsets.only(top: 70),
      child: Column(
        children: [
          SizedBox(
            width: 120,
            height: 120,
            child: Image.asset("assets/img/robot_logo.png", width: 120,),
          ),
          SizedBox(height: 25),
          Text(
            "Sociaworld",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 35),
          Material(
            borderRadius: BorderRadius.circular(20),
            elevation: 5,
            shadowColor: Colors.black,
            child: Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 70,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  colors: [?Colors.purple[300], ?Colors.purple[100]],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Mail ile Giriş",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 52,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Text(
                            "Facebook ile Giriş",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 52,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.red[600],
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Text(
                            "Gmail ile Giriş",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}