import 'package:countryside/personal_details.dart';
import 'package:flutter/material.dart';

import 'delivery_address.dart';
import 'delivery_instructions.dart';
import 'help_and_support.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Profile",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalDetails()));
                },
                child: Row(
                  children: [
                    Text(
                      "Personal Details",
                      style: TextStyle(
                        fontSize: 19
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined,size: 18,)
                  ],
                ),
              ),
              Divider(height: 40,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryAddress()));
                },
                child: Row(
                  children: [
                    Text(
                      "Delivery Address",
                      style: TextStyle(
                          fontSize: 19
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined,size: 18,)
                  ],
                ),
              ),
              Divider(height: 40,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryInstructions()));
                },
                child: Row(
                  children: [
                    Text(
                      "Delivery Instructions",
                      style: TextStyle(
                          fontSize: 19
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined,size: 18,)
                  ],
                ),
              ),
              Divider(height: 40,),

              Row(
                children: [
                  Text(
                    "Order History",
                    style: TextStyle(
                        fontSize: 19
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios_outlined,size: 18,)
                ],
              ),
              Divider(height: 40,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpAndSupport()));
                },
                child: Row(
                  children: [
                    Text(
                      "Help & Support",
                      style: TextStyle(
                          fontSize: 19
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined,size: 18,),
                  ],
                ),
              ),
              Divider(height: 40,),

              Text(
                "Logout",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.red
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
