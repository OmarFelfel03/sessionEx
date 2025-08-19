import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task10/screens/cart_screen.dart';
import 'package:task10/screens/favorites_screen.dart';
import 'package:task10/screens/home_screen.dart';
import 'package:task10/screens/profile_screen.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class NavigationScreen extends StatefulWidget {
  static String id = '/navBottom';
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: pageIndex, children: pages),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffDB3022),
        onPressed: () {},
        child: Icon(Icons.qr_code, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          CupertinoIcons.home,
          CupertinoIcons.cart,
          CupertinoIcons.heart,
          CupertinoIcons.person,
        ],
        activeIndex: pageIndex,
        onTap: (Index) {
          setState(() {
            pageIndex = Index;
          });
        },
        inactiveColor: Colors.black.withOpacity(0.5),
        activeColor: Color(0xffDB3022),
        gapLocation: GapLocation.center,
        leftCornerRadius: 15,
        rightCornerRadius: 15,
        iconSize: 25,
        notchSmoothness: NotchSmoothness.softEdge,
      ),
    );
  }
}
