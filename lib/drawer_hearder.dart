import 'package:countryside/bottom_navigation_bar.dart';
import 'package:countryside/delivery_address.dart';
import 'package:countryside/delivery_instructions.dart';
import 'package:countryside/faqs_screen.dart';
import 'package:countryside/help_and_support.dart';
import 'package:countryside/nothing.dart';
import 'package:countryside/offer_screen.dart';
import 'package:countryside/personal_details.dart';
import 'package:countryside/policies_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:countryside/holidays_screen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {

  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalDetails()));
            },
            child: Row(
              children: [
                Image.asset("assets/Field to Fork Freshness logo.png"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Namaste! Atul",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:16
                      ),
                    ),
                    Text(
                      "Wake uo to Health",
                      style: TextStyle(
                        fontSize: 13
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [

              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text("Home"),
                ),
                leading:Icon(CupertinoIcons.home),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationBarScreen()));
                },
              ),

              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text("My Subscription"),
                ),
                leading:Icon(CupertinoIcons.calendar_badge_plus),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Nothing()));
                },
              ),

              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text("Orders History"),
                ),
                leading:Icon(Icons.history_outlined),
                onTap: () {
                  // TODO: Handle item 1 tap
                },
              ),

              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    "Delivery Address",
                  ),
                ),
                leading:Icon(Icons.delivery_dining_outlined),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryAddress()));
                },
              ),

              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text("Holiday"),
                ),
                leading:Icon(Icons.calendar_today_outlined),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HolidaysScreen(),));
                },
              ),

              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text("Offer"),
                ),
                leading:Icon(Icons.local_offer_outlined),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OfferScreen()));
                },
              ),


              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    "Delivery Instruction",
                  ),
                ),
                leading:Icon(Icons.note_alt_outlined),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryInstructions()));
                },
              ),

              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text("FAQs"),
                ),
                leading:Icon(CupertinoIcons.question_circle),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FAQScreen(),));
                  },
              ),

              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text("Help & Support"),
                ),
                leading:Icon(Icons.support_agent_outlined),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpAndSupport()));
                },
              ),

              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text("Policies"),
                ),
                leading:Icon(Icons.policy_outlined),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PoliciesScreen(),));
                },
              ),

              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    "Pause all deliveries",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                trailing:  Transform.scale(
                  scale: 0.8,
                  child: Switch(
                    activeColor: Colors.yellow.shade900,
                    value: switchValue,
                    onChanged: (value) {
                      setState(() {
                        switchValue = value;
                      });
                    },
                  ),
                ),
                onTap: () {
                  setState(() {
                    switchValue = !switchValue;
                  });
                },
              ),

              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child:  Text(
                    "Logout",
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.red
                    ),
                  )
                ),
                // leading:Icon(Icons.logout_outlined),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryAddress()));
                },
              ),

            ],
          )
          ,
        )
      ],
    );
  }
}
