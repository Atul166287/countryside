import 'dart:async';
import 'package:countryside/add_to_cart.dart';
import 'package:countryside/combo_details.dart';
import 'package:countryside/drawer_hearder.dart';
import 'package:countryside/notification_screen.dart';
import 'package:countryside/offer_screen.dart';
import 'package:countryside/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<String> bannerList = [
    "assets/1.jpg",
    "assets/2.jpg",
    "assets/3.jpg",
    "assets/4.jpg",
  ];

  late PageController _pageController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);

    // Auto-scroll every 5 seconds
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_pageController.page == bannerList.length - 1) {
        _pageController.animateToPage(
          0,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        _pageController.nextPage(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        title: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                "assets/Field to Fork Freshness_page-0001.png",
                // width: 50,
                // height: 80,
                fit: BoxFit.contain,
              ),
            ),
            Expanded(
              flex: 4,
              child: Text(
                'CS Farms',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_outlined,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen(),));
              // Add your notification logic here
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

        ],
      ),

      drawer: Drawer(
        child:DrawerScreen()
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [


            SizedBox(
              width: double.infinity,
              height: 110,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0,top: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Namaste! Atul",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                      ),
                    ),
                    SizedBox(height: 5,),

                    Text(
                      "Welcome back to CountrySide Farms",
                      style: TextStyle(
                          fontSize: 19
                      ),
                    )
                  ],
                ),
              ),
            ),



            Container(
              height: 195,
              width: double.infinity,
              child: PageView.builder(
                controller: _pageController,
                itemCount: bannerList.length,

                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    // width: screenWidth * 0.8,
                    // margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                        child: Image.asset(
                          bannerList[index],
                          fit: BoxFit.fitWidth,
                        )
                      // Text(
                      //   bannerList[index],
                      //   style: TextStyle(
                      //     fontSize: 20,
                      //     color: Colors.white,
                      //   ),
                      // ),
                    ),
                  );
                },
              ),
            ),

            /*  address verification */
            // Divider(thickness: 15,
            //   color: Colors.black12,
            // ),
            //
            // SizedBox(
            //   height: 130,
            //   child: Container(
            //     margin: EdgeInsets.all(15),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.all(Radius.circular(15)),
            //       color: Color(0xFF002601),
            //     ),
            //     child: Row(
            //       children: [
            //         Expanded(
            //           flex: 2,
            //           child: Padding(
            //             padding: const EdgeInsets.only(left: 5.0,right: 5),
            //             child: Center(
            //               child: Icon(
            //                 Icons.add_location_alt_outlined,
            //                 size: 40,
            //                 color: Colors.white,
            //               ),
            //             ),
            //           ),
            //         ),
            //         Expanded(
            //           flex: 5,
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               Text(
            //                 "Address Verification",
            //                 style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontSize: 18,
            //                   color: Colors.white
            //                 ),
            //               ),
            //               Text(
            //                 "Please wait until we verify your details",
            //                 style: TextStyle(color: Colors.white),
            //               )
            //             ],
            //           ),
            //         ),
            //         Expanded(
            //           flex: 3,
            //           child: Padding(
            //             padding: const EdgeInsets.only(left: 5,right: 15,top: 30,bottom: 30),
            //             child: Container(
            //               decoration: BoxDecoration(
            //                 color: Color(0xFFd19b11),
            //                 borderRadius: BorderRadius.circular(25),
            //               ),
            //               child: Padding(
            //                 padding: const EdgeInsets.only(),
            //                 child: Center(
            //                   child: Text(
            //                     "See all \n steps",
            //                     style: TextStyle(
            //                       fontWeight: FontWeight.bold,
            //                       fontSize: 13,
            //                       color: Colors.white
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // ),


            SizedBox(
              height: 200,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54
                      ),
                    ),
                    SizedBox(height: 15,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          InkWell(
                            // onTap:(){
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => ProductsScreen(initialTabIndex: initialTabIndex),
                            //     ),
                            //   );
                            //   },
                            child: Column(
                              children: [
                                ClipRRect(

                                    child: Image.network(
                                      "https://sidsfarm.com/wp-content/uploads/2021/06/Milk-1-1.png",
                                      height: 100,
                                      // width: 50,
                                    )
                                ),
                                Text(
                                  "Milk",
                                  style: TextStyle(
                                    fontSize: 16
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              ClipRRect(

                                  child: Image.network(
                                    "https://sidsfarm.com/wp-content/uploads/2021/06/Curd.png",
                                    height: 100,
                                    // width: 50,
                                  )
                              ),
                              Text(
                                "Pure Curd",
                                style: TextStyle(
                                    fontSize: 15
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              ClipRRect(

                                  child: Image.network(
                                    "https://sidsfarm.com/wp-content/uploads/2021/08/Natural-Curd.png",
                                    height: 100,
                                    // width: 50,
                                  )
                              ),
                              Text(
                                "Natural Curd",
                                style: TextStyle(
                                    fontSize: 15
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              ClipRRect(

                                  child: Image.network(
                                    "https://sidsfarm.com/wp-content/uploads/2021/08/Cow-Curd.png",
                                    height: 100,
                                    // width: 50,
                                  )
                              ),
                              Text(
                                "Cow Curd",
                                style: TextStyle(
                                    fontSize: 15
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              ClipRRect(

                                  child: Image.network(
                                    "https://sidsfarm.com/wp-content/uploads/2021/06/Natural-Paneer.png",
                                    height: 100,
                                    // width: 50,
                                  )
                              ),
                              Text(
                                "Natural Paneer",
                                style: TextStyle(
                                    fontSize: 15
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              ClipRRect(

                                  child: Image.network(
                                    "https://sidsfarm.com/wp-content/uploads/2021/08/Buffalo-Butter.png",
                                    height: 100,
                                    // width: 50,
                                  )
                              ),
                              Text(
                                "Buffalo Butter",
                                style: TextStyle(
                                    fontSize: 15
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              ClipRRect(

                                  child: Image.network(
                                    "https://sidsfarm.com/wp-content/uploads/2021/06/Milk-1-1.png",
                                    height: 100,
                                    // width: 50,
                                  )
                              ),
                              Text(
                                "Milk",
                                style: TextStyle(
                                    fontSize: 15
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              ClipRRect(

                                  child: Image.network(
                                    "https://sidsfarm.com/wp-content/uploads/2021/06/Curd.png",
                                    height: 100,
                                    // width: 50,
                                  )
                              ),
                              Text(
                                "Pure Curd",
                                style: TextStyle(
                                    fontSize: 15
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              ClipRRect(

                                  child: Image.network(
                                    "https://sidsfarm.com/wp-content/uploads/2021/08/Natural-Curd.png",
                                    height: 100,
                                    // width: 50,
                                  )
                              ),
                              Text(
                                "Natural Curd",
                                style: TextStyle(
                                    fontSize: 15
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              ClipRRect(

                                  child: Image.network(
                                    "https://sidsfarm.com/wp-content/uploads/2021/08/Cow-Curd.png",
                                    height: 100,
                                    // width: 50,
                                  )
                              ),
                              Text(
                                "Cow Curd",
                                style: TextStyle(
                                    fontSize: 15
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              ClipRRect(

                                  child: Image.network(
                                    "https://sidsfarm.com/wp-content/uploads/2021/06/Natural-Paneer.png",
                                    height: 100,
                                    // width: 50,
                                  )
                              ),
                              Text(
                                "Natural Paneer",
                                style: TextStyle(
                                    fontSize: 15
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              ClipRRect(

                                  child: Image.network(
                                    "https://sidsfarm.com/wp-content/uploads/2021/08/Buffalo-Butter.png",
                                    height: 100,
                                    // width: 50,
                                  )
                              ),
                              Text(
                                "Buffalo Butter",
                                style: TextStyle(
                                    fontSize: 15
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            Divider(),

            SizedBox(
              height: 190,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Offers",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>OfferScreen()));
                          },
                          child: Text(
                            "See All",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ComboDetails())),
                            child: Card(
                              elevation:5,
                              child: Container(
                                height: 110,
                                width: 250,
                                // margin: EdgeInsets.only(left: 15),
                                decoration: BoxDecoration(
                                  color: Color(0xFFffffff),
                                  // border: Border.all(width: 2, color: Color(0xFF000000),),
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width:20),
                                    Expanded(
                                        child: Image.network("https://img.freepik.com/free-vector/buy-one-get-one-free-shopping-offer-design_1017-34223.jpg")
                                      // Text(
                                      //   "Buy 1 Get 2 Free",
                                      //   style: TextStyle(
                                      //     fontWeight: FontWeight.bold,
                                      //     fontSize:18
                                      //   ),
                                      // ),
                                    ),
                                    SizedBox(width:15),
                                    Image.network(
                                      "https://sidsfarm.com/wp-content/uploads/2023/08/Cow-Ghee-Combo.png",
                                      height: 100,
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation:5,
                            child: Container(
                              height: 110,
                              width: 250,
                              // margin: EdgeInsets.only(left: 15),
                              decoration: BoxDecoration(
                                color: Color(0xFFffffff),
                                // border: Border.all(width: 2, color: Color(0xFF000000),),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width:20),
                                  Image.network(
                                    "https://sidsfarm.com/wp-content/uploads/2023/08/Cow-Ghee-Combo.png",
                                    height: 100,
                                  ),
                                  SizedBox(width:15),

                                  Expanded(
                                    child: Text(
                                      "Buy 1 Get 2 Free",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize:18
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation:5,
                            child: Container(
                              height: 110,
                              width: 250,
                              // margin: EdgeInsets.only(left: 15),
                              decoration: BoxDecoration(
                                color: Color(0xFFffffff),
                                // border: Border.all(width: 2, color: Color(0xFF000000),),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width:20),
                                  Image.network(
                                    "https://sidsfarm.com/wp-content/uploads/2023/08/Cow-Ghee-Combo.png",
                                    height: 100,
                                  ),
                                  SizedBox(width:15),

                                  Expanded(
                                    child: Text(
                                      "Buy 1 Get 2 Free",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize:18
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation:5,
                            child: Container(
                              height: 110,
                              width: 250,
                              // margin: EdgeInsets.only(left: 15),
                              decoration: BoxDecoration(
                                color: Color(0xFFffffff),
                                // border: Border.all(width: 2, color: Color(0xFF000000),),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width:20),
                                  Image.network(
                                    "https://sidsfarm.com/wp-content/uploads/2023/08/Cow-Ghee-Combo.png",
                                    height: 100,
                                  ),
                                  SizedBox(width:15),

                                  Expanded(
                                    child: Text(
                                      "Buy 1 Get 2 Free",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize:18
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation:5,
                            child: Container(
                              height: 110,
                              width: 250,
                              // margin: EdgeInsets.only(left: 15),
                              decoration: BoxDecoration(
                                color: Color(0xFFffffff),
                                // border: Border.all(width: 2, color: Color(0xFF000000),),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width:20),
                                  Image.network(
                                    "https://sidsfarm.com/wp-content/uploads/2023/08/Cow-Ghee-Combo.png",
                                    height: 100,
                                  ),
                                  SizedBox(width:15),

                                  Expanded(
                                    child: Text(
                                      "Buy 1 Get 2 Free",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize:18
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),


                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            /* book visit*/
            // Divider(thickness: 15,
            //   color: Colors.black12,
            // ),
            //
            // Padding(
            //   padding: EdgeInsets.only(left: 15,right:15,top: 15),
            //   child: Card(
            //     elevation: 5,
            //     child: Container(
            //       height: 150,
            //       // margin: EdgeInsets.only(left: 15,right:15,top: 15),
            //       decoration: BoxDecoration(
            //           // color: Color(0xFFffffff),
            //           color: Color(0xFFffffff),
            //           // border: Border.all(width: 2, color: Color(0xFF000000),),
            //           borderRadius: BorderRadius.all(Radius.circular(10))
            //       ),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           SizedBox(width:20),
            //           Image.network(
            //             "https://sidsfarm.com/wp-content/uploads/2021/06/Sourcing-Milk.png",
            //             height: 100,
            //           ),
            //
            //           SizedBox(width:15),
            //
            //           Expanded(
            //             child: Column(
            //               children: [
            //                 SizedBox(height: 14,),
            //
            //                 Text(
            //                   "Spend a weekend at CountrySide Farms",
            //                   style: TextStyle(
            //                     fontWeight: FontWeight.bold,
            //                     fontSize: screenWidth < 370 ? 18 : 20,
            //                     color: Colors.black,
            //                   ),
            //                 ),
            //                 SizedBox(height: 3,),
            //                 Container(
            //                   margin: EdgeInsets.only(top: 5),
            //                   decoration: BoxDecoration(
            //                     color: Color(0xFFd19b11),
            //                     borderRadius: BorderRadius.circular(15)
            //                   ),
            //                   child: Padding(
            //                     padding: const EdgeInsets.only(left:17,right: 17,top: 7,bottom: 7),
            //                     child: Text(
            //                       "Book Your Visit",
            //                       style: TextStyle(
            //                         fontSize: 15,
            //                         color: Colors.white
            //                       ),
            //                     ),
            //                   ),
            //                 )
            //               ],
            //             ),
            //           ),
            //
            //           SizedBox(width: 15,)
            //         ],
            //       ),
            //     ),
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Padding(
                   padding: EdgeInsets.only(left:15),
                   child: Text(
                    "Recommend for you",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black54

                    ),
                  ),
                 ),

                  SizedBox(height: 10,),

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
                              child: Text(
                                "₹75.00",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10,)
                      ],
                    ),
                  ),

                  Divider(),

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
                              child: Text(
                                "₹75.00",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10,)
                      ],
                    ),
                  ),

                  Divider(),

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
                              child: Text(
                                "₹75.00",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10,)
                      ],
                    ),
                  ),

                  Divider(),

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
                              child: Text(
                                "₹75.00",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10,)
                      ],
                    ),
                  ),

                  Divider(),





                ],
              ),
            ),

            /* popular*/
            Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:15.0,top:15),
                    child: Text(
                      "Popular",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black54

                      ),
                    ),
                  ),

                  SizedBox(height: 10,),

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
                              child: Text(
                                "₹75.00",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10,)
                      ],
                    ),
                  ),

                  Divider(),

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
                              child: Text(
                                "₹75.00",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10,)
                      ],
                    ),
                  ),

                  Divider(),

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
                              child: Text(
                                "₹75.00",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10,)
                      ],
                    ),
                  ),

                  Divider(),

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
                              child: Text(
                                "₹75.00",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10,)
                      ],
                    ),
                  ),

                  Divider(),
                ],
              ),
            ),

            /* Quick Action*/
            // Padding(
            //   padding: const EdgeInsets.all(15.0),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         "Quick Action",
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //           fontSize: 20
            //         ),
            //       ),
            //
            //
            //       Row(
            //         children: [
            //           Expanded(
            //             flex:5,
            //             child: InkWell(
            //               onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => WalletScreen(),)),
            //               child: Container(
            //                 height: 80,
            //                 margin: EdgeInsets.only(top: 15),
            //                 decoration: BoxDecoration(
            //                     color: Color(0xFF002601),
            //                     borderRadius: BorderRadius.all(Radius.circular(10))
            //                 ),
            //                 child: Row(
            //                   mainAxisAlignment: MainAxisAlignment.start,
            //                   crossAxisAlignment: CrossAxisAlignment.center,
            //                   children: [
            //                     SizedBox(width:10,),
            //                     Icon(Icons.account_balance_wallet_outlined,color: Colors.white),
            //
            //                     SizedBox(width: 15,),
            //
            //                     Expanded(
            //                       child: Text(
            //                         "Recharge your wallet",
            //                         style: TextStyle(
            //                             fontWeight: FontWeight.bold,
            //                             fontSize: 17,
            //                             color: Colors.white
            //                         ),
            //                       ),
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ),
            //           SizedBox(width: 9,),
            //           Expanded(
            //             flex:5,
            //             child: InkWell(
            //               onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => Nothing(),)),
            //               child: Container(
            //                 height: 80,
            //                 margin: EdgeInsets.only(top: 15),
            //                 decoration: BoxDecoration(
            //                     color: Color(0xFF002601),
            //                     borderRadius: BorderRadius.all(Radius.circular(10))
            //                 ),
            //                 child: Row(
            //                   mainAxisAlignment: MainAxisAlignment.start,
            //                   crossAxisAlignment: CrossAxisAlignment.center,
            //                   children: [
            //                     SizedBox(width:10,),
            //                     Icon(Icons.calendar_today,color: Colors.white),
            //
            //                     SizedBox(width: 15,),
            //
            //                     Expanded(
            //                       child: Text(
            //                         "Edit Your subscriptions",
            //                         style: TextStyle(
            //                             fontWeight: FontWeight.bold,
            //                             fontSize: 17,
            //                             color: Colors.white
            //                         ),
            //                       ),
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //
            //       Row(
            //         children: [
            //           Expanded(
            //             flex:5,
            //             child: Container(
            //               height: 80,
            //               margin: EdgeInsets.only(top: 15),
            //               decoration: BoxDecoration(
            //                   color: Color(0xFF002601),
            //                   borderRadius: BorderRadius.all(Radius.circular(10))
            //               ),
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.start,
            //                 crossAxisAlignment: CrossAxisAlignment.center,
            //                 children: [
            //                   SizedBox(width:10,),
            //                   Icon(Icons.assignment_sharp,color: Colors.white),
            //
            //                   SizedBox(width: 15,),
            //
            //                   Expanded(
            //                     child: Text(
            //                       "View order statement",
            //                       style: TextStyle(
            //                           fontWeight: FontWeight.bold,
            //                           fontSize: 17,
            //                           color: Colors.white
            //                       ),
            //                     ),
            //                   )
            //                 ],
            //               ),
            //             ),
            //           ),
            //           SizedBox(width: 9,),
            //           Expanded(
            //             flex:5,
            //             child: InkWell(
            //               onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HolidaysScreen(),)),
            //               child: Container(
            //                 height: 80,
            //                 margin: EdgeInsets.only(top: 15),
            //                 decoration: BoxDecoration(
            //                     color: Color(0xFF002601),
            //                     borderRadius: BorderRadius.all(Radius.circular(10))
            //                 ),
            //                 child: Row(
            //                   mainAxisAlignment: MainAxisAlignment.start,
            //                   crossAxisAlignment: CrossAxisAlignment.center,
            //                   children: [
            //                     SizedBox(width:10,),
            //                     Icon(Icons.calendar_today_outlined,color: Colors.white),
            //
            //                     SizedBox(width: 15,),
            //
            //                     Expanded(
            //                       child: Text(
            //                         "Add your holidays",
            //                         style: TextStyle(
            //                           fontWeight: FontWeight.bold,
            //                           fontSize: 17,
            //                           color: Colors.white
            //                         ),
            //                       ),
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //
            //
            //     ],
            //   ),
            // ),

          ],
        ),
      )
    );
  }
}
