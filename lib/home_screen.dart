
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName='Home_Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('islami'),
        centerTitle: true,
      ),
    );
  }
}
