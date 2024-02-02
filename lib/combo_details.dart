import 'package:countryside/wallet_screen.dart';
import 'package:flutter/material.dart';

class ComboDetails extends StatefulWidget {
  const ComboDetails({Key? key}) : super(key: key);

  @override
  State<ComboDetails> createState() => _ComboDetailsState();
}

class _ComboDetailsState extends State<ComboDetails> {
  int quantity = 1; // Variable to keep track of the quantity
  DateTime selectedDate = DateTime.now(); // Variable to store the selected date

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
        title: Text("Buy Combo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              thickness: 8,
              color: Colors.grey.shade200,
            ),

            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://sidsfarm.com/wp-content/uploads/2023/08/Cow-Ghee-Combo.png",
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

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Divider(),
                      ],
                    ),
                  ),

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
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text(
                          "Set delivery date",
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
                ],
              ),
            ),

            Divider(
              thickness: 10,
              color: Colors.grey.shade200,
            ),

            SizedBox(height: 10,),

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



            SizedBox(height: screenHeight/18,),

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
