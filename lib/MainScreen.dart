import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'FirstHomePage.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    FirstHomePage(), // Your main home page with grid etc.
    Center(child: Text("Explore", style: TextStyle(color: Colors.white))),
    Center(child: Text("Favorites", style: TextStyle(color: Colors.white))),
    Center(child: Text("Profile", style: TextStyle(color: Colors.white))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: _screens[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent, // To remove the default background
        color: Color(0xFFCE9760), // Background color of the navbar
        height: 60, // Height of the navbar
        animationDuration: Duration(milliseconds: 300),
        items: <Widget>[
          Icon(Icons.home_outlined, size: 30, color: Colors.black),
          Icon(Icons.shopping_cart_outlined, size: 30, color: Colors.black),
          Icon(Icons.favorite_border, size: 30, color: Colors.black),
          Icon(Icons.person_outline, size: 30, color: Colors.black),
        ],
        index: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        buttonBackgroundColor:
            Color(0xFFCE9760), // Circle background color when selected
        letIndexChange: (index) => true, // Allow index changes
      ),
    );
  }
}
