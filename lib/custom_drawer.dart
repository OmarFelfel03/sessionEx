import 'package:flutter/material.dart';
import 'package:task10/screens/cart_screen.dart';
import 'package:task10/screens/favorites_screen.dart';
import 'package:task10/screens/home_screen.dart';
import 'package:task10/screens/profile_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Omar Felfel'),
            accountEmail: Text('omarfelfel@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/marmot.png'),
            ),
            decoration: BoxDecoration(color: Colors.deepPurple),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, HomeScreen.id);
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Cart'),
            onTap: () {
              Navigator.pushNamed(context, CartScreen.id);
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('favourites'),
            onTap: () {
              Navigator.pushNamed(context, FavoritesScreen.id);
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              Navigator.pushNamed(context, ProfileScreen.id);
            },
          ),
          Divider(thickness: 0.5, color: Colors.blueGrey),

          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Exit Drawer'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
