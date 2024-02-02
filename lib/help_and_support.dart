import 'package:flutter/material.dart';

class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({super.key});

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Help & Support",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "assets/Field to Fork Freshness logo.png",
                  height: 300,
                ),
              ),

              Text(
                "We Are Happy to serve you!",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFFd19b11),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0,right: 10, top: 12,bottom: 12),
                  child: Center(
                    child: Text(
                      "Call us",
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15,right: 15,bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFFd19b11),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0,right: 10, top: 12,bottom: 12),
                  child: Center(
                    child: Text(
                      "Message us",
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.white
                      ),
                    ),
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
