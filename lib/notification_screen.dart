import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 3, bottom: 3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/Natural-Paneer.png",
                        height: 40,
                      ),
                      SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Natural-Paneer",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            "2 days ago",
                            style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.bold
                            ),                    )
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 7,),

                  Text(
                    "Amazing offers on Natural-Paneer",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                  SizedBox(height: 4,),

                  Text(
                    "Get 10,000 free mins for flutter app: https://bit.ly/3QztYtK, Find out more about ZEGOCLOUD: https://bit.ly/3iutZT1,",
                    style: TextStyle(
                      fontSize: 14,
                      // fontWeight: FontWeight.bold
                    ),
                  ),

                  Divider(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
