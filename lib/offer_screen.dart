import 'package:countryside/combo_details.dart';
import 'package:flutter/material.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({super.key});

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: Colors.white,
        title: Text(
          "Offer",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            // Divider(
            //   thickness: 15,
            //   color: Colors.black12,
            // ),


            // Padding(
            //   padding: const EdgeInsets.all(12.0),
            //   child: GridView.builder(
            //     physics: NeverScrollableScrollPhysics(),
            //     shrinkWrap: true,
            //       itemCount: 10,
            //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 2,
            //         crossAxisSpacing: 3.50,
            //         mainAxisSpacing: 3.50,
            //         childAspectRatio:0.78
            //       ),
            //       itemBuilder: (context, index) {
            //         return InkWell(
            //           onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ComboDetails(),)),
            //           child: Card(
            //             child: Padding(
            //               padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8),
            //               child: Column(
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 crossAxisAlignment: CrossAxisAlignment.center,
            //                 children: [
            //                   Column(
            //                     children: [
            //                       index%2==0 ?
            //                       Column(
            //                         children: [
            //                           Text(
            //                             "Buy 1 Get 1 Free",
            //                             style: TextStyle(
            //                               color: Color(0xFFfc0000),
            //                             ),
            //                           ),
            //                           Image.network(
            //                             "https://sidsfarm.com/wp-content/uploads/2023/08/Buffalo-Ghee-Combo.png",
            //                             height: 130,
            //                           ),
            //                         ],
            //                       ) :
            //                       Column(
            //                         children: [
            //                           Image.asset(
            //                             "assets/Natural-Paneer.png",
            //                             height: 140,
            //                           ),
            //
            //                           SizedBox(height: 10,),
            //                         ],
            //                       ),
            //
            //
            //                     ],
            //                   ),
            //
            //                   // Image.asset(
            //                   //   "assets/Natural-Paneer.png",
            //                   //   height: 140,
            //                   // ),
            //
            //                   // SizedBox(height: 10,),
            //
            //
            //                   Text(
            //                     "A2 Desi Cow Milk",
            //                     style: TextStyle(
            //                         fontSize:16,
            //                         fontWeight: FontWeight.bold
            //                     ),
            //                   ),
            //
            //                   Row(
            //                     children: [
            //                       Expanded(
            //                         child: Center(
            //                           child: Text(
            //                             "₹160.00",
            //                             style: TextStyle(
            //                               // color: Colors.grey
            //                               decoration: TextDecoration.lineThrough,
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //
            //                       Expanded(
            //                         child: Center(
            //                           child: Text(
            //                             "₹80.00",
            //                             style: TextStyle(
            //                                 color: Colors.black,
            //                                 fontSize: 18,
            //                                 fontWeight: FontWeight.bold
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //
            //                     ],
            //                   )
            //                 ],
            //               ),
            //             ),
            //           ),
            //         );
            //       },),
            // ),




            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Image.network(
                          "https://sidsfarm.com/wp-content/uploads/2023/08/Buffalo-Ghee-Combo.png",
                          height: 120,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Buy 1 Get 1 Free",
                            style: TextStyle(
                              color: Color(0xFFfc0000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                    
                                Text(
                                  "A2 Desi Cow Milk",
                                  style: TextStyle(
                                      fontSize:17,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                    
                                Text(
                                  "800 ML",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                    
                        SizedBox(height: 10,),
                    
                        Row(
                          children: [
                    
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "₹160.00",
                                  style: TextStyle(
                                    // color: Colors.grey
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                Text(
                                  "₹80.00",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                    
                            Spacer(),
                    
                            Container(
                              margin: EdgeInsets.only(right: 35),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xFFd19b11)
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ComboDetails(),)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16.0, right: 16, top: 8,bottom: 8),
                                  child: Text(
                                    "Grab Now",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            Divider(
              color: Colors.black12,
            ),


            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Image.network(
                          "https://sidsfarm.com/wp-content/uploads/2023/08/Buffalo-Ghee-Combo.png",
                          height: 120,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Buy 1 Get 1 Free",
                            style: TextStyle(
                              color: Color(0xFFfc0000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  "A2 Desi Cow Milk",
                                  style: TextStyle(
                                      fontSize:17,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),

                                Text(
                                  "800 ML",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 10,),

                        Row(
                          children: [

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "₹160.00",
                                  style: TextStyle(
                                    // color: Colors.grey
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                Text(
                                  "₹80.00",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),

                            Spacer(),

                            Container(
                              margin: EdgeInsets.only(right: 35),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xFFd19b11)
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ComboDetails(),)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16.0, right: 16, top: 8,bottom: 8),
                                  child: Text(
                                    "Grab Now",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            Divider(
              color: Colors.black12,
            ),

            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Image.network(
                          "https://sidsfarm.com/wp-content/uploads/2023/08/Buffalo-Ghee-Combo.png",
                          height: 120,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Buy 1 Get 1 Free",
                            style: TextStyle(
                              color: Color(0xFFfc0000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  "A2 Desi Cow Milk",
                                  style: TextStyle(
                                      fontSize:17,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),

                                Text(
                                  "800 ML",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 10,),

                        Row(
                          children: [

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "₹160.00",
                                  style: TextStyle(
                                    // color: Colors.grey
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                Text(
                                  "₹80.00",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),

                            Spacer(),

                            Container(
                              margin: EdgeInsets.only(right: 35),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xFFd19b11)
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ComboDetails(),)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16.0, right: 16, top: 8,bottom: 8),
                                  child: Text(
                                    "Grab Now",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            Divider(
              color: Colors.black12,
            ),

            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Image.network(
                          "https://sidsfarm.com/wp-content/uploads/2023/08/Buffalo-Ghee-Combo.png",
                          height: 120,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Buy 1 Get 1 Free",
                            style: TextStyle(
                              color: Color(0xFFfc0000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  "A2 Desi Cow Milk",
                                  style: TextStyle(
                                      fontSize:17,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),

                                Text(
                                  "800 ML",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 10,),

                        Row(
                          children: [

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "₹160.00",
                                  style: TextStyle(
                                    // color: Colors.grey
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                Text(
                                  "₹80.00",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),

                            Spacer(),

                            Container(
                              margin: EdgeInsets.only(right: 35),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xFFd19b11)
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ComboDetails(),)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16.0, right: 16, top: 8,bottom: 8),
                                  child: Text(
                                    "Grab Now",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            Divider(
              color: Colors.black12,
            ),

            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Image.network(
                          "https://sidsfarm.com/wp-content/uploads/2023/08/Buffalo-Ghee-Combo.png",
                          height: 120,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Buy 1 Get 1 Free",
                            style: TextStyle(
                              color: Color(0xFFfc0000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  "A2 Desi Cow Milk",
                                  style: TextStyle(
                                      fontSize:17,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),

                                Text(
                                  "800 ML",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 10,),

                        Row(
                          children: [

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "₹160.00",
                                  style: TextStyle(
                                    // color: Colors.grey
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                Text(
                                  "₹80.00",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),

                            Spacer(),

                            Container(
                              margin: EdgeInsets.only(right: 35),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xFFd19b11)
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ComboDetails(),)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16.0, right: 16, top: 8,bottom: 8),
                                  child: Text(
                                    "Grab Now",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            Divider(
              color: Colors.black12,
            ),

            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Image.network(
                          "https://sidsfarm.com/wp-content/uploads/2023/08/Buffalo-Ghee-Combo.png",
                          height: 120,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Buy 1 Get 1 Free",
                            style: TextStyle(
                              color: Color(0xFFfc0000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  "A2 Desi Cow Milk",
                                  style: TextStyle(
                                      fontSize:17,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),

                                Text(
                                  "800 ML",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 10,),

                        Row(
                          children: [

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "₹160.00",
                                  style: TextStyle(
                                    // color: Colors.grey
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                Text(
                                  "₹80.00",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),

                            Spacer(),

                            Container(
                              margin: EdgeInsets.only(right: 35),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xFFd19b11)
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ComboDetails(),)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16.0, right: 16, top: 8,bottom: 8),
                                  child: Text(
                                    "Grab Now",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            Divider(
              color: Colors.black12,
            ),

            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Image.network(
                          "https://sidsfarm.com/wp-content/uploads/2023/08/Buffalo-Ghee-Combo.png",
                          height: 120,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Buy 1 Get 1 Free",
                            style: TextStyle(
                              color: Color(0xFFfc0000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  "A2 Desi Cow Milk",
                                  style: TextStyle(
                                      fontSize:17,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),

                                Text(
                                  "800 ML",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 10,),

                        Row(
                          children: [

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "₹160.00",
                                  style: TextStyle(
                                    // color: Colors.grey
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                Text(
                                  "₹80.00",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),

                            Spacer(),

                            Container(
                              margin: EdgeInsets.only(right: 35),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xFFd19b11)
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ComboDetails(),)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16.0, right: 16, top: 8,bottom: 8),
                                  child: Text(
                                    "Grab Now",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            Divider(
              color: Colors.black12,
            ),

            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Image.network(
                          "https://sidsfarm.com/wp-content/uploads/2023/08/Buffalo-Ghee-Combo.png",
                          height: 120,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Buy 1 Get 1 Free",
                            style: TextStyle(
                              color: Color(0xFFfc0000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  "A2 Desi Cow Milk",
                                  style: TextStyle(
                                      fontSize:17,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),

                                Text(
                                  "800 ML",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 10,),

                        Row(
                          children: [

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "₹160.00",
                                  style: TextStyle(
                                    // color: Colors.grey
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                Text(
                                  "₹80.00",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),

                            Spacer(),

                            Container(
                              margin: EdgeInsets.only(right: 35),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xFFd19b11)
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ComboDetails(),)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16.0, right: 16, top: 8,bottom: 8),
                                  child: Text(
                                    "Grab Now",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            Divider(
              color: Colors.black12,
            ),






          ],
        ),
      ),
    );
  }
}
