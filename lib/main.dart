import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
     // title: 'Flutter Demo',
     theme: ThemeData(
      // primarySwatch: Colors.blue,
     //  visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: ColorScheme.fromSeed( seedColor: Colors.blue),
      // useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

          