import 'package:flutter/material.dart';
import 'package:task10/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = '/homescreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('Home screen', style: TextStyle(fontSize: 30))),
      drawer: CustomDrawer(),
    );
  }
}
