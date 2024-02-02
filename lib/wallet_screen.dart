import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  TextEditingController enteredAmount = TextEditingController();
  var amount=0.00;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wallet",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.history_outlined,
              size: 30,
              color: Colors.blueAccent,
            ),
            onPressed: () {
              print('Notification button pressed');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              thickness: 8,
              color: Colors.black12,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Current Balance",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                SizedBox(height: 3,),

                // Spacer(),
                Text(
                  "₹ $amount",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: amount<20 ? Colors.red:Colors.green,
                  ),
                ),
                SizedBox(width: 25),
              ],
            ),
            Divider(
              thickness: 8,
              color: Colors.black12,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Amount",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.5,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Colors.grey[300],
                    ),
                    child: TextField(
                      style: TextStyle(fontSize: 20),
                      keyboardType: TextInputType.number,
                      controller: enteredAmount,
                      decoration: InputDecoration(
                        filled: false,
                        // fillColor: Colors.grey[300],
                        hintText: 'Enter Amount',
                        hintStyle: TextStyle(color: Colors.black87, fontSize: 19),
                        prefixIcon: Icon(Icons.currency_rupee_outlined ),
                        border: InputBorder.none,
                        // contentPadding: EdgeInsets.all(15),
                      ),
                      onChanged: (value) {
                        setState(() {
                          enteredAmount.text = value;
                        });
                      },
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "You can also choose",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54
                    ),
                  ),

                  SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            enteredAmount.text = '1000';
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                          decoration: BoxDecoration(
                            color: enteredAmount == '1000' ? Colors.yellow : Colors.grey[300],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            '₹1000',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            enteredAmount.text = '1500';
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                          decoration: BoxDecoration(
                            color: enteredAmount == '1500' ? Colors.yellow : Colors.grey[300],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Text(
                                '₹1500',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            enteredAmount.text = '2000';
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                          decoration: BoxDecoration(
                            color: enteredAmount == '2000' ? Colors.yellow : Colors.grey[300],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            '₹2000',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Divider(
              thickness: 8,
              color: Colors.black12,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Code",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.5,

                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        flex:6,
                        child: Container(
                          height: 45,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[300],
                          ),
                          child: TextField(
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[300],
                              hintText: 'Enter promocode',
                              hintStyle: TextStyle( fontSize: 19),
                              border: InputBorder.none,
                              // contentPadding: EdgeInsets.all(15),
                            ),
                            // onChanged: (value) {
                            //   setState(() {
                            //     enteredAmount = value;
                            //   });
                            // },
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFd19b11),
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child:Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 12),
                              child: Center(
                                child: Text(
                                  "Apply",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 10),

                ],
              ),
            ),


            SizedBox(height: screenHeight/4,),

            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFd19b11),
              ),
              child: InkWell(
                onTap: () {

                },
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0,right: 10, top: 11,bottom: 11),
                  child: Center(
                    child: Text(
                      "Choose Payment Mode",
                      style: TextStyle(
                          fontSize: 19,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
