import 'package:countryside/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: screenHeight/7,),

              Image.asset("assets/Field to Fork Freshness logo.png"),

              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    const Text("Enter have sent an OTP",
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
                width: screenWidth/1.1,
                child: TextField(
                  keyboardType: TextInputType.number,
                  // controller: otpController,
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(
                      // fontSize:18,
                        color: Colors.grey
                    ),
                    hintText: "ENTER OTP",
                  ),
                ),
              ),

              const SizedBox(height: 25,),

              SizedBox(
                height: 45,
                width: screenWidth/1.3,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFd19b11)),
                    ),
                    onPressed:  (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationBarScreen()));
                    },
                    child: const Text("LOGIN",
                      style: TextStyle(fontSize:20,
                          color: Colors. white,
                          fontWeight: FontWeight.bold
                      )
                      ,)
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:10,bottom: 10),
                child: InkWell(
                  onTap: (){},
                  child: const Text("Resend OTP",
                      style: TextStyle(color: Colors.grey,fontSize: 18)
                  ),
                ),
              ),


              // Text(
              //   "Enter OTP",
              //   style: TextStyle(
              //       fontSize: 23,
              //       fontWeight: FontWeight.bold
              //   ),
              // ),
              //
              // SizedBox(height: 10,),
              //
              // TextField(
              //   style: TextStyle(
              //       fontSize: 19
              //   ),
              //   keyboardType: TextInputType.numberWithOptions(),
              //   decoration: InputDecoration(
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(10),
              //           borderSide: BorderSide.none
              //       ),
              //       filled: true,
              //       fillColor: Colors.grey[100],
              //       hintText: "Enter OTP",
              //       hintStyle: TextStyle(
              //           fontSize: 19
              //       ),
              //       constraints: BoxConstraints.tight(Size.fromHeight(50)),
              //   ),
              // ),
              //
              //
              // SizedBox(height: 15,),
              //
              // InkWell(
              //   onTap: (){
              //     Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationBarScreen()));
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
              //             fontSize: 19,
              //             color: Colors.white,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              //
              // SizedBox(height: 15,),
              //
              // Center(
              //   child: Text(
              //     "Resend OTP, ",
              //     style: TextStyle(
              //         fontSize: 16
              //     ),
              //   ),
              // ),


            ],
          ),
        ),
      ),
    );
  }
}
