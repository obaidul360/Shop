import 'package:choice/pages/cart_page.dart';
import 'package:choice/pages/favorite_page.dart';
import 'package:choice/pages/home_page.dart';
import 'package:choice/pages/order_page.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _currentIndex = 0;
  final List<Widget> _pages = <Widget>[
    HomePages(),
    FavoritePages(),
    CartPage(),
    OrderPages(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xFF7BC0D8),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_repair_service, size: 22),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, size: 22),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel_outlined, size: 22),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wheelchair_pickup_outlined,size: 22,),
            label: "Order",
          ),
        ],
      ),
    );
  }
}
