import 'package:countryside/otp_screen.dart';
import 'package:flutter/material.dart';

class AddressDetails extends StatefulWidget {
  const AddressDetails({super.key});

  @override
  State<AddressDetails> createState() => _AddressDetailsState();
}

class _AddressDetailsState extends State<AddressDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Address Details",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 21.0, right: 21, top: 21),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Flat, House no., Building, Apartment",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,

                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    style: TextStyle(
                        fontSize: 19
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                        hintText: "Flat, House no., Building, Apartment",
                        hintStyle: TextStyle(
                            fontSize: 19
                        ),
                        constraints: BoxConstraints.tight(Size.fromHeight(55))
                    ),
                  ),

                  SizedBox(height: 20,),
                  Text(
                    "Area, Street, Sector, Village",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    style: TextStyle(
                        fontSize: 19
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                        hintText: "Area, Street, Sector, Village",
                        hintStyle: TextStyle(
                            fontSize: 19
                        ),
                        constraints: BoxConstraints.tight(Size.fromHeight(55))
                    ),
                  ),

                  SizedBox(height: 20,),
                  Text(
                    "Landmark",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    style: TextStyle(
                        fontSize: 19
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                        hintText: "E.g. near SBI Bank",
                        hintStyle: TextStyle(
                            fontSize: 19
                        ),
                        constraints: BoxConstraints.tight(Size.fromHeight(55))
                    ),
                  ),

                  SizedBox(height: 20,),
                  Text(
                    "Pincode",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    style: TextStyle(
                        fontSize: 19
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                        hintText: "6 digits PIN code",
                        hintStyle: TextStyle(
                            fontSize: 19
                        ),
                        constraints: BoxConstraints.tight(Size.fromHeight(55))
                    ),
                  ),

                  SizedBox(height: 15,),
                  Text(
                    "Town/City",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  TextField(
                    style: TextStyle(
                        fontSize: 19
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                        // hintText: "Town/City",
                        hintStyle: TextStyle(
                            fontSize: 19
                        ),
                        constraints: BoxConstraints.tight(Size.fromHeight(55))
                    ),
                  ),
                  SizedBox(height: 15,),

                  Text(
                    "State",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    style: TextStyle(
                        fontSize: 19
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                        hintText: "State",
                        hintStyle: TextStyle(
                            fontSize: 19
                        ),
                        constraints: BoxConstraints.tight(Size.fromHeight(55))
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 21,right: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFFd19b11),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen(),));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0,right: 10, top: 11,bottom: 11),
                        child: Center(
                          child: Text(
                            "Save",
                            style: TextStyle(
                                fontSize: 19,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
