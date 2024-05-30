import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/menu_screen/menu_1.dart';
import 'package:flutter_application_3/pages/menu_screen/menu_2.dart';
import 'package:flutter_application_3/pages/menu_screen/menu_3.dart';
import 'package:flutter_application_3/pages/menu_screen/menu_4.dart';

class Menu extends StatefulWidget {
Menu({Key? key}) : super(key : key);

  @override
  _MenuState createState() =>  _MenuState();
}

class  _MenuState extends State <Menu> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 3, 112, 201),
        title: Text('ផ្សេងៗ',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color:Colors.white,
          ),),
      ),
      body: ListView(
        children: [
          ListTile(
           iconColor: Colors.black,
            title: Text('ជំនួយ',
             style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color:Color.fromARGB(255, 3, 112, 201),
          ),),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FirstScreen(),
                ),
              );
            },
          ),
          ListTile(
            iconColor: Colors.black,
            title: Text('ក្រុមការងារបច្ចេកទេស',
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color:Color.fromARGB(255, 3, 112, 201),
          ),),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(),
                ),
              );
            },
          ),
          ListTile(
            iconColor: Colors.black,
            title: Text('ទំនាក់ទំនង',
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color:Color.fromARGB(255, 3, 112, 201),
          ),),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ThirdScreen(),
                ),
              );
            },
          ),

          ListTile(
            iconColor: Colors.black,
            title: Text('អំពីកម្មវិធី',
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color:Color.fromARGB(255, 3, 112, 201),
             ),),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ForthScreen(),
                ),
              );
            },
          ),

        ],
      ),);
  }
}

//mixin home {
//}