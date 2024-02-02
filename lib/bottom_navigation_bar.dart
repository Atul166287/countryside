import 'package:countryside/account_screen.dart';
import 'package:countryside/home_screen.dart';
import 'package:countryside/nothing.dart';
import 'package:countryside/products_Screen.dart';
import 'package:countryside/wallet_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  _BottomNavigationBarScreenState createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;



  final List<Widget> _pages = [
    const HomeScreen(),
    ProductsScreen(),
    const Nothing(),
    const WalletScreen(),
    // const AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(

          backgroundColor: Colors.brown.shade900,
          // backgroundColor: Color(0xFF011d01),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart),
              label: 'Product',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined),
              label: 'Subscription',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_outlined),
              label: 'Wallet',
            ),

            // BottomNavigationBarItem(
            //   icon: Icon(Icons.person_outline),
            //   label: 'Profile',
            // ),
          ],
        ),
      ),
    );
  }
}






/* location details app / smart city */

//
// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:location_details/sell_property/sell_property_home.dart';
// import 'package:location_details/to_late/to_late_home.dart';
//
// import 'clean_city/clean_city_home.dart';
//
//
// class BottomNavigationBarClass extends StatefulWidget {
//   const BottomNavigationBarClass({super.key});
//
//
//   @override
//   State<BottomNavigationBarClass> createState() => _BottomNavigationBarClassState();
// }
//
// class _BottomNavigationBarClassState extends State<BottomNavigationBarClass> {
//
//   int selecetedIndex=0;
//   List mylist=[
//
//     const CleanPlaceHome(),
//
//     const ToLateHome(),
//
//     const SellPropertyHome(),
//
//     Container(
//       color: Colors.pink,
//     ),
//   ];
//
//   void ontapitem(int index)
//   {
//     setState(() {
//       selecetedIndex=index;
//
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text("Bottom Nevigation"),
//       //
//       // ),
//         body:mylist.elementAt(selecetedIndex),
//         bottomNavigationBar: CurvedNavigationBar(
//           items: const [
//             Icon( Icons.home_filled),
//             Icon( Icons.  category_outlined),
//             Icon( Icons. notifications ),
//             Icon( Icons.  account_circle ),
//           ],
//           onTap: ontapitem,
//           index: selecetedIndex,
//         )
//
//     );
//   }
// }