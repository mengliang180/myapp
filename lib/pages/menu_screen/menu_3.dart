import 'package:flutter/material.dart';
class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 112, 201),
        title: Text('ទំនាក់ទំនង',
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150.0, vertical: 10),
        child: Text(
          '',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}