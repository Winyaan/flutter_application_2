import 'dart:ffi';

import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {

  final String name;
  final int age;

  // Constructor to accept the parameters
  DisplayPage({required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Display Page'),
      ),
      body: Center(
        child: Text(
          'Name: $name\nAge: $age',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}