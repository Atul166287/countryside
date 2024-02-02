import 'package:flutter/material.dart';

class DeliveryAddress extends StatefulWidget {
  const DeliveryAddress({super.key});

  @override
  State<DeliveryAddress> createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          "Delivery Address",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 15,),

          Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery address",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text(
                    "Atul Sharma",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),
                  ),
                  Text(
                    "18, 1, Sharma, Raisen, Raisen, Madhya Pradesh, 464551",
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                  Text(
                    "Phone number: 9584166287",
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                ],
              ),
            ),
          ),

          Spacer(),

          Center(
            child: Text(
              "To change your address",
              style: TextStyle(
                fontSize: 16
              ),
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
    );
  }
}
