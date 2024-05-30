
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
 // SplashScreen({Key? key}) : super(key: key);

  @override
   _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 112, 201),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         
          children: [
            // logo here
           

            Image.asset(
              'assets/images/logo.jpeg',
             height: 250,
             width: 250,
             
            ),
            SizedBox(
             height: 10,
            ),
           /*  CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )*/


            Text(
              // Replace with your desired text
              'ពាក្យបច្ចេកទេស',
             style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
             ),
            ),

          ]
        ),
      ),
    );
  }
}

