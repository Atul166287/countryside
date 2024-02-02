import 'dart:async';
import 'package:countryside/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState()  {
    Timer(const Duration(seconds: 3), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginScreen(),));
      final SharedPreferences s=await SharedPreferences.getInstance();
      bool? result=s.getBool('flutterkey');
      // print(result);
      if(result==true){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginScreen(),));
      }
      else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen(),));
      }
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: Image.asset(
              "assets/Field to Fork Freshness logo.png",
              fit: BoxFit.fitWidth
          )
      ),
    );
  }
}
