import 'package:countryside/buy_once.dart';
import 'package:countryside/subscribe_screen.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(

      appBar: AppBar(),
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Divider(
              //   thickness: 8,
              //   color: Colors.black12,
              // ),

              SizedBox(height: screenHeight/20,),

              Center(
                child: Image.asset(
                  "assets/Natural-Paneer.png",
                  height: 250,
                ),
              ),


              SizedBox(height: 50,),

              Text(
                "A2 Desi Cow Milk",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23
                ),
              ),

              SizedBox(height: 10,),

              Row(
                children: [
                  Text(
                    "₹75.00",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23
                    ),
                  ),

                  Spacer(),

                  Text(
                    "500 ML",
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                        fontSize: 19
                    ),
                  ),

                ],
              ),


              SizedBox(height:20,),


              Container(
                margin: EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFFd19b11),
                ),
                child: InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SubscribeScreen(),)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0,right: 10, top: 11,bottom: 11),
                    child: Center(
                      child: Text(
                        "Subscribe",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ),


              Container(
                margin: EdgeInsets.only( top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border:Border.all(
                      width: 2,
                      color: Color(0xFF002601),
                    )
                ),
                child: InkWell(
                  onTap: () =>Navigator.push(context, MaterialPageRoute(builder: (context) => BuyOnceScreen(),)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0,right: 10, top: 9,bottom: 9),
                    child: Center(
                      child: Text(
                        "Buy Once",
                        style: TextStyle(
                            color: Color(0xFF002601),
                            fontSize: 17
                        ),
                      ),
                    ),
                  ),
                ),
              ),


              SizedBox(height:30,),


              Text(
                "Description",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23
                ),
              ),

              SizedBox(height: 15,),


              Text(
                "Fill the protein gap in your diet without compromising on the taste with Sid’s Farm Paneer. Bite into our fresh, tender and creamy paneer and stay healthier. Our paneer is made from fresh and pure wholesome milk. It is processed, homogenised and packed in state-of-the-art plants before reaching your kitchens.",
                style: TextStyle(
                    fontSize: 18
                ),
              ),




              SizedBox(height: 25,)
            ],
          ),
        ),
      ),
    );
  }
}
