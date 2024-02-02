import 'package:countryside/product_details.dart';
import 'package:countryside/wallet_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {

  bool isLike = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart"
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [

              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails()));
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex:3,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Image.asset(
                                      "assets/Natural-Paneer.png",
                                      // width: 150,
                                    ),
                                  ),
                                ),

                                Expanded(
                                  flex:9,
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [



                                          Text(
                                            "A2 Desi Cow Milk",
                                            style: TextStyle(
                                                fontSize:16,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),

                                          Text(
                                            "500 ML",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 13
                                            ),
                                          ),

                                          SizedBox(height: 10,),

                                          Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color:Color(0xFFd19b11),
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.only(left: 11.0,right: 11, top: 5,bottom: 5),

                                                  child: Text(
                                                    "View Product",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 11
                                                    ),
                                                  ),
                                                ),
                                              ),

                                              SizedBox(width: 10,),

                                              // Container(
                                              //   margin: EdgeInsets.only(right: 13),
                                              //   decoration: BoxDecoration(
                                              //       borderRadius: BorderRadius.circular(50),
                                              //       border:Border.all(width: 1,
                                              //         color: Color(0xFF002601),
                                              //       )
                                              //   ),
                                              //   child: Padding(
                                              //     padding: EdgeInsets.only(left: 11.0,right: 11, top: 4,bottom: 4),
                                              //
                                              //     child: Center(
                                              //       child: Text(
                                              //         "Buy Once",
                                              //         style: TextStyle(
                                              //             color: Color(0xFF002601),
                                              //             fontSize: 11
                                              //         ),
                                              //       ),
                                              //     ),
                                              //   ),
                                              // ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                Expanded(
                                  flex:3,
                                  child: Column(
                                    children: [

                                      IconButton(

                                        onPressed: (){
                                          setState(() {
                                            isLike = !isLike;
                                          });
                                        },
                                        icon: isLike ?
                                        Icon(CupertinoIcons.heart_fill,color: Colors.red,):
                                        Icon(CupertinoIcons.suit_heart),

                                      ),

                                      SizedBox(height: 15,),

                                      Text(
                                        "₹75.00",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 10,)
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black12,
                      ),
                    ],
                  );
                },
              ),

              SizedBox(height: 20,),

              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Subtotal ",
                    style: TextStyle(
                        fontSize: 21
                    ),
                  ),

                  Text(
                    "₹",
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),

                  Text(
                    "1000",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15,),

              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WalletScreen(),));
                },
                child: Container(
                  // margin: EdgeInsets.all(20),
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

              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
