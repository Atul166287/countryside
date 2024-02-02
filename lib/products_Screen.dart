import 'package:countryside/add_to_cart.dart';
import 'package:countryside/notification_screen.dart';
import 'package:countryside/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
   ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {

  bool isLike = false;

  final List<String> itemList = [
    'Milk',
    'Curd',
    'Paneer',
    'Butter',
    'Ghee',
    'Eggs',
    'Non Edible',
    'Gifting',
    'Beverages',
    'Combos'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 10,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'CountrySide Farms',
              style: TextStyle(
                  // fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.notifications_outlined,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen(),));
                  print('Notification button pressed');
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.fire_truck_outlined,
                  size: 30,
                ),
                onPressed: () {
                  // Action for delivery button
                  // Add your delivery logic here
                  print('Delivery button pressed');
                },
              ),
              IconButton(
                icon: Icon(
                  CupertinoIcons.cart,
                  size: 24,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddToCart(),));
                  print('Delivery button pressed');
                },
              ),
            ],            bottom: PreferredSize(
              preferredSize: Size.fromHeight(48.0),
              child: TabBar(
                isScrollable: true,
                labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                tabs: List<Widget>.generate(
                  itemList.length,
                      (index) => Tab(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 33.0),
                      child: Text(itemList[index],
                      style: TextStyle(
                        fontSize: 17
                      ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),


          body: TabBarView(
            children: List<Widget>.generate(
              itemList.length,
                  (index) => Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Divider(
                      //   thickness: 10,
                      //   color: Colors.black12,
                      // ),

                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Divider(
                                color: Colors.black12,
                              ),
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
                                                            "Subscribe",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 11
                                                            ),
                                                          ),
                                                        ),
                                                      ),

                                                      SizedBox(width: 10,),

                                                      Container(
                                                        margin: EdgeInsets.only(right: 13),
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(50),
                                                            border:Border.all(width: 1,
                                                              color: Color(0xFF002601),
                                                            )
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets.only(left: 11.0,right: 11, top: 4,bottom: 4),

                                                          child: Center(
                                                            child: Text(
                                                              "Buy Once",
                                                              style: TextStyle(
                                                                  color: Color(0xFF002601),
                                                                  fontSize: 11
                                                              ),
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
                            ],
                          );
                        },
                      ),

                      // InkWell(
                      //   onTap: (){
                      //     Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails()));
                      //   },
                      //   child: Column(
                      //     children: [
                      //       Row(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         crossAxisAlignment: CrossAxisAlignment.center,
                      //         children: [
                      //           Expanded(
                      //             flex:3,
                      //             child: Padding(
                      //               padding: const EdgeInsets.all(10),
                      //               child: Image.asset(
                      //                 "assets/Natural-Paneer.png",
                      //                 // width: 150,
                      //               ),
                      //             ),
                      //           ),
                      //
                      //           Expanded(
                      //             flex:9,
                      //             child: Row(
                      //               children: [
                      //                 SizedBox(width: 10,),
                      //                 Column(
                      //                   mainAxisAlignment: MainAxisAlignment.start,
                      //                   crossAxisAlignment: CrossAxisAlignment.start,
                      //                   children: [
                      //
                      //
                      //
                      //                     Text(
                      //                       "A2 Desi Cow Milk",
                      //                       style: TextStyle(
                      //                           fontSize:16,
                      //                           fontWeight: FontWeight.bold
                      //                       ),
                      //                     ),
                      //
                      //                     Text(
                      //                       "500 ML",
                      //                       style: TextStyle(
                      //                           color: Colors.black87,
                      //                           fontSize: 13
                      //                       ),
                      //                     ),
                      //
                      //                     SizedBox(height: 10,),
                      //
                      //                     Row(
                      //                       children: [
                      //                         Container(
                      //                           decoration: BoxDecoration(
                      //                             color:Color(0xFFd19b11),
                      //                             borderRadius: BorderRadius.circular(15),
                      //                           ),
                      //                           child: Padding(
                      //                             padding: EdgeInsets.only(left: 11.0,right: 11, top: 5,bottom: 5),
                      //
                      //                             child: Text(
                      //                               "Subscribe",
                      //                               style: TextStyle(
                      //                                   color: Colors.white,
                      //                                   fontSize: 11
                      //                               ),
                      //                             ),
                      //                           ),
                      //                         ),
                      //
                      //                         SizedBox(width: 10,),
                      //
                      //                         Container(
                      //                           margin: EdgeInsets.only(right: 13),
                      //                           decoration: BoxDecoration(
                      //                               borderRadius: BorderRadius.circular(50),
                      //                               border:Border.all(width: 1,
                      //                                 color: Color(0xFF002601),
                      //                               )
                      //                           ),
                      //                           child: Padding(
                      //                             padding: EdgeInsets.only(left: 11.0,right: 11, top: 4,bottom: 4),
                      //
                      //                             child: Center(
                      //                               child: Text(
                      //                                 "Buy Once",
                      //                                 style: TextStyle(
                      //                                     color: Color(0xFF002601),
                      //                                     fontSize: 11
                      //                                 ),
                      //                               ),
                      //                             ),
                      //                           ),
                      //                         ),
                      //                       ],
                      //                     ),
                      //                   ],
                      //                 ),
                      //               ],
                      //             ),
                      //           ),
                      //
                      //           Expanded(
                      //             flex:3,
                      //             child: Text(
                      //               "₹75.00",
                      //               style: TextStyle(
                      //                   color: Colors.black87,
                      //                   fontSize: 16,
                      //                   fontWeight: FontWeight.bold
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //
                      //       SizedBox(height: 10,)
                      //     ],
                      //   ),
                      // ),
                      //
                      // Divider(
                      //   color: Colors.black12,
                      // ),
                      // InkWell(
                      //   onTap: (){
                      //     Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails()));
                      //   },
                      //   child: Column(
                      //     children: [
                      //       Row(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         crossAxisAlignment: CrossAxisAlignment.center,
                      //         children: [
                      //           Expanded(
                      //             flex:3,
                      //             child: Padding(
                      //               padding: const EdgeInsets.all(10),
                      //               child: Image.asset(
                      //                 "assets/Natural-Paneer.png",
                      //                 // width: 150,
                      //               ),
                      //             ),
                      //           ),
                      //
                      //           Expanded(
                      //             flex:9,
                      //             child: Row(
                      //               children: [
                      //                 SizedBox(width: 10,),
                      //                 Column(
                      //                   mainAxisAlignment: MainAxisAlignment.start,
                      //                   crossAxisAlignment: CrossAxisAlignment.start,
                      //                   children: [
                      //
                      //
                      //
                      //                     Text(
                      //                       "A2 Desi Cow Milk",
                      //                       style: TextStyle(
                      //                           fontSize:16,
                      //                           fontWeight: FontWeight.bold
                      //                       ),
                      //                     ),
                      //
                      //                     Text(
                      //                       "500 ML",
                      //                       style: TextStyle(
                      //                           color: Colors.black87,
                      //                           fontSize: 13
                      //                       ),
                      //                     ),
                      //
                      //                     SizedBox(height: 10,),
                      //
                      //                     Row(
                      //                       children: [
                      //                         Container(
                      //                           decoration: BoxDecoration(
                      //                             color:Color(0xFFd19b11),
                      //                             borderRadius: BorderRadius.circular(15),
                      //                           ),
                      //                           child: Padding(
                      //                             padding: EdgeInsets.only(left: 11.0,right: 11, top: 5,bottom: 5),
                      //
                      //                             child: Text(
                      //                               "Subscribe",
                      //                               style: TextStyle(
                      //                                   color: Colors.white,
                      //                                   fontSize: 11
                      //                               ),
                      //                             ),
                      //                           ),
                      //                         ),
                      //
                      //                         SizedBox(width: 10,),
                      //
                      //                         Container(
                      //                           margin: EdgeInsets.only(right: 13),
                      //                           decoration: BoxDecoration(
                      //                               borderRadius: BorderRadius.circular(50),
                      //                               border:Border.all(width: 1,
                      //                                 color: Color(0xFF002601),
                      //                               )
                      //                           ),
                      //                           child: Padding(
                      //                             padding: EdgeInsets.only(left: 11.0,right: 11, top: 4,bottom: 4),
                      //
                      //                             child: Center(
                      //                               child: Text(
                      //                                 "Buy Once",
                      //                                 style: TextStyle(
                      //                                     color: Color(0xFF002601),
                      //                                     fontSize: 11
                      //                                 ),
                      //                               ),
                      //                             ),
                      //                           ),
                      //                         ),
                      //                       ],
                      //                     ),
                      //                   ],
                      //                 ),
                      //               ],
                      //             ),
                      //           ),
                      //
                      //           Expanded(
                      //             flex:3,
                      //             child: Text(
                      //               "₹75.00",
                      //               style: TextStyle(
                      //                   color: Colors.black87,
                      //                   fontSize: 16,
                      //                   fontWeight: FontWeight.bold
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //
                      //       SizedBox(height: 10,)
                      //     ],
                      //   ),
                      // ),





                    ],
                  ),
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
