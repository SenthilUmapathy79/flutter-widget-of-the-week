import 'package:flutter/material.dart';
import './home.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widget of the week'),
      ),
      body: Center(
        child: HomeLayout(),
      ),
    );
  }
}