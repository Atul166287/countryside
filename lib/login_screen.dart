import 'package:countryside/registration_screen.dart';
import 'package:flutter/material.dart';

import 'otp_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: screenHeight/7,),

              Image.asset("assets/Field to Fork Freshness logo.png"),


              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    // SizedBox(width: screenWidth /20,),
                    const Text("Mobile Number",
                      style: TextStyle(
                          backgroundColor: Colors.white,
                          color: Colors.grey,
                          fontSize: 18
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: 48,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)
                ),
                width: screenWidth / 1.1,
                child: TextField(
                  keyboardType: TextInputType.number,
                  // controller: contactController,
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(
                      // fontSize: 18,
                        color: Colors.grey
                    ),
                    hintText: "Enter Your Mobile Number",
                    // border: OutlineInputBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(6))
                    // ),
                  ),
                ),
              ),

              const SizedBox(height: 25,),

              Center(
                child: SizedBox(
                  height: 45,
                  width: screenWidth / 1.3,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFd19b11)),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                    },
                    child:const Text("CONTINUE",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20,),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     Text(
              //       "Don't have an account?",
              //       style: TextStyle(
              //           color: Colors.grey[600],
              //           fontSize: 15
              //       ),
              //     ),
              //     InkWell(
              //       onTap: (){
              //         Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration()));
              //       },
              //       child: Text(
              //         " Registration",
              //         style: TextStyle(
              //             color: Colors.black,
              //             fontSize: 15
              //         ),
              //       ),
              //     )
              //   ],
              // ),




              // Text(
              //   "Enter Mobile Number",
              //   style: TextStyle(
              //     fontSize: 23,
              //     fontWeight: FontWeight.bold
              //   ),
              // ),
              //
              // SizedBox(height: 10,),
              //
              // TextField(
              //   style: TextStyle(
              //     fontSize: 19
              //   ),
              //   keyboardType: TextInputType.numberWithOptions(),
              //   decoration: InputDecoration(
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(10),
              //           borderSide: BorderSide.none
              //       ),
              //       filled: true,
              //       fillColor: Colors.grey[100],
              //       hintText: "Enter Number",
              //       hintStyle: TextStyle(
              //           fontSize: 19
              //       ),
              //       constraints: BoxConstraints.tight(Size.fromHeight(50)),
              //     prefixText:"+91   ",
              //
              //   ),
              // ),
              //
              // SizedBox(height: 15,),
              //
              // InkWell(
              //   onTap: (){
              //     Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
              //   },
              //   child: Container(
              //     // margin: EdgeInsets.only(left: 15,right: 15,bottom: 15),
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(50),
              //       color: Colors.black,
              //     ),
              //     child: Padding(
              //       padding: EdgeInsets.only(left: 10.0,right: 10, top: 12,bottom: 12),
              //       child: Center(
              //         child: Text(
              //           "Request OTP",
              //           style: TextStyle(
              //               fontSize: 19,
              //               color: Colors.white,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              //
              // SizedBox(height: 15,),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account, ",
                    style: TextStyle(
                        fontSize: 16,
                      color: Colors.grey
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration()));
                    },
                    child: Text(
                      "Registration",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueAccent
                      ),
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
