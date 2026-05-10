import 'package:ai38ai/home_screen.dart';
import 'package:ai38ai/profile_screen.dart';
import 'package:ai38ai/search_screen.dart';
import 'package:flutter/material.dart';

import 'cart_screen.dart';
import 'order_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentIndex = 0;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.amber,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.black54,
        onTap: (int index){
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "Orders"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile"),
        ],
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          HomeScreen(),
          SearchScreen(),
          CartScreen(),
          OrderScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }
}
