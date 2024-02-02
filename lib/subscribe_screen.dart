import 'package:countryside/wallet_screen.dart';
import 'package:flutter/material.dart';

class SubscribeScreen extends StatefulWidget {
  const SubscribeScreen({Key? key}) : super(key: key);

  @override
  State<SubscribeScreen> createState() => _SubscribeScreenState();
}

class _SubscribeScreenState extends State<SubscribeScreen> {
  int quantity = 1; // Variable to keep track of the quantity

  int quantitySun = 0;
  int quantityMon = 0;
  int quantityTue = 0;
  int quantityWed = 0;
  int quantityThu = 0;
  int quantityFri = 0;
  int quantitySat = 0;



  DateTime selectedDate = DateTime.now(); // Variable to store the selected date
  String deliverySchedule = 'daily'; // Default value for radio buttons
  int i=0;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Subscribe"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              thickness: 8,
              color: Colors.grey.shade200,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  "https://sidsfarm.com/wp-content/uploads/2021/06/Natural-Paneer.png",
                  width: 120,
                ),

                const Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "SIDS",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "A2 Desi Cow Milk",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "500 ML",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),

                const Expanded(
                  flex: 2,
                  child: Text(
                    "₹75.00",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),


            Divider(
              thickness: 9,
              color: Colors.grey.shade200,
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Choose schedule",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                  ListTile(
                    title: const Text('Daily'),
                    leading: Radio(
                      value: 'daily',
                      groupValue: deliverySchedule,
                      onChanged: (value) {
                        setState(() {
                          i=0;
                          deliverySchedule = value.toString();
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Alternate Day'),
                    leading: Radio(
                      value: 'alternate_day',
                      groupValue: deliverySchedule,
                      onChanged: (value) {
                        setState(() {
                          i=0;
                          deliverySchedule = value.toString();
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Custom'),
                    leading: Radio(
                      value: 'custom',
                      groupValue: deliverySchedule,
                      onChanged: (value) {
                        setState(() {
                          i=1;
                          deliverySchedule = value.toString();
                        });
                      },
                    ),
                  ),

                ],
              ),
            ),



            Divider(
              thickness: 10,
              color: Colors.grey.shade200,
            ),

            SizedBox(height: 10,),

            Container(
              child:i==1?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    const Text(
                      "Quantity",
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),

                    Row(
                      children: [
                        Text(
                          "Sun",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),

                        Spacer(),

                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                if (quantitySun > 0) {
                                  setState(() {
                                    quantitySun--;
                                  });
                                }
                              },
                              child: Container(
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(width: 2,color: Colors.blueAccent)
                                ),
                                child: const Center(
                                  child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.remove,
                                        size: 17,
                                      )
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Text(
                              '$quantitySun',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 20,),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  quantitySun++;
                                });
                              },
                              child: Container(
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(width: 2,color: Colors.blueAccent)
                                ),
                                child: const Center(
                                  child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.add,
                                        size: 17,
                                      )
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 5,),

                    Row(
                      children: [
                        Text(
                          "Mon",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),

                        Spacer(),

                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                if (quantityMon > 0) {
                                  setState(() {
                                    quantityMon--;
                                  });
                                }
                              },
                              child: Container(
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(width: 2,color: Colors.blueAccent)
                                ),
                                child: const Center(
                                  child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.remove,
                                        size: 17,
                                      )
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Text(
                              '$quantityMon',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 20,),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  quantityMon++;
                                });
                              },
                              child: Container(
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(width: 2,color: Colors.blueAccent)
                                ),
                                child: const Center(
                                  child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.add,
                                        size: 17,
                                      )
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 5,),

                    Row(
                      children: [
                        Text(
                          "Tue",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),

                        Spacer(),

                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                if (quantityTue > 0) {
                                  setState(() {
                                    quantityTue--;
                                  });
                                }
                              },
                              child: Container(
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(width: 2,color: Colors.blueAccent)
                                ),
                                child: const Center(
                                  child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.remove,
                                        size: 17,
                                      )
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Text(
                              '$quantityTue',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 20,),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  quantityTue++;
                                });
                              },
                              child: Container(
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(width: 2,color: Colors.blueAccent)
                                ),
                                child: const Center(
                                  child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.add,
                                        size: 17,
                                      )
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 5,),

                    Row(
                      children: [
                        Text(
                          "Wed",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),

                        Spacer(),

                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                if (quantityWed > 0) {
                                  setState(() {
                                    quantityWed--;
                                  });
                                }
                              },
                              child: Container(
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(width: 2,color: Colors.blueAccent)
                                ),
                                child: const Center(
                                  child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.remove,
                                        size: 17,
                                      )
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Text(
                              '$quantityWed',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 20,),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  quantityWed++;
                                });
                              },
                              child: Container(
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(width: 2,color: Colors.blueAccent)
                                ),
                                child: const Center(
                                  child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.add,
                                        size: 17,
                                      )
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 5,),

                    Row(
                      children: [
                        Text(
                          "Thu",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),

                        Spacer(),

                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                if (quantityThu > 0) {
                                  setState(() {
                                    quantityThu--;
                                  });
                                }
                              },
                              child: Container(
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(width: 2,color: Colors.blueAccent)
                                ),
                                child: const Center(
                                  child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.remove,
                                        size: 17,
                                      )
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Text(
                              '$quantityThu',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 20,),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  quantityThu++;
                                });
                              },
                              child: Container(
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(width: 2,color: Colors.blueAccent)
                                ),
                                child: const Center(
                                  child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.add,
                                        size: 17,
                                      )
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 5,),

                    Row(
                      children: [
                        Text(
                          "Fri",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),

                        Spacer(),

                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                if (quantityFri > 0) {
                                  setState(() {
                                    quantityFri--;
                                  });
                                }
                              },
                              child: Container(
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(width: 2,color: Colors.blueAccent)
                                ),
                                child: const Center(
                                  child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.remove,
                                        size: 17,
                                      )
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Text(
                              '$quantityFri',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 20,),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  quantityFri++;
                                });
                              },
                              child: Container(
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(width: 2,color: Colors.blueAccent)
                                ),
                                child: const Center(
                                  child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.add,
                                        size: 17,
                                      )
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 5,),

                    Row(
                      children: [
                        Text(
                          "Sat",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),

                        Spacer(),

                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                if (quantitySat > 0) {
                                  setState(() {
                                    quantitySat--;
                                  });
                                }
                              },
                              child: Container(
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(width: 2,color: Colors.blueAccent)
                                ),
                                child: const Center(
                                  child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.remove,
                                        size: 17,
                                      )
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Text(
                              '$quantitySat',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 20,),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  quantitySat++;
                                });
                              },
                              child: Container(
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(width: 2,color: Colors.blueAccent)
                                ),
                                child: const Center(
                                  child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.add,
                                        size: 17,
                                      )
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ):
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        const Text(
                          "Quantity",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),

                        Spacer(),

                        // Quantity Counter
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                if (quantity > 1) {
                                  setState(() {
                                    quantity--;
                                  });
                                }
                              },
                              child: Container(
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(width: 2,color: Colors.blueAccent)
                                ),
                                child: const Center(
                                  child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.remove,
                                        size: 18,
                                      )
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Text(
                              '$quantity',
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 20,),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                              child: Container(
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(width: 2,color: Colors.blueAccent)
                                ),
                                child: const Center(
                                  child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.add,
                                        size: 18,
                                      )
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    "Start from",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                    ),
                  ),

                  Spacer(),

                  InkWell(
                    onTap: () => _selectDate(context),
                    child: Row(
                      children: [
                        Icon(Icons.calendar_today_outlined, color: Colors.blueAccent,),
                        SizedBox(width: 5,),
                        Text(
                          "${selectedDate.toLocal().day}/${ selectedDate.toLocal().month}/${selectedDate.toLocal().year}",
                          style: TextStyle(
                              fontSize: 18
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Divider(
              thickness: 10,
              color: Colors.grey.shade200,
            ),


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


            Divider(
              thickness: 10,
              color: Colors.grey.shade200,
            ),

            SizedBox(height: 10,),

            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Icon(Icons.fire_truck)
                ),
                Expanded(
                  flex: 9,
                  child: Text(
                    "Your order will be delivered on the scheduled day",
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16
                    ),
                  ),
                )
              ],
            ),


            SizedBox(height: 15,),

            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Icon(Icons.account_balance_wallet_outlined)
                ),
                Expanded(
                  flex: 9,
                  child: Text(
                    "Amount will be deducted from the wallet on the day of delivery",
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16
                    ),
                  ),
                )
              ],
            ),

            SizedBox(height: 15,),

            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Icon(Icons.access_time_outlined)
                ),
                Expanded(
                  flex: 9,
                  child: Text(
                    "Tomorrow's order cutoff time is 10 PM",
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16
                    ),
                  ),
                )
              ],
            ),

            // SizedBox(height: screenHeight/4,),

            SizedBox(height: 20,),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => WalletScreen(),));
              },
              child: Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFFd19b11),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0,right: 10, top: 11,bottom: 11),
                  child: Center(
                    child: Text(
                      "Place Order",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
