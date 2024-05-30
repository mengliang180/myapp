

import 'package:flutter/material.dart';
//import 'package:flutter_application_3/pages/news_page.dart';
import 'package:flutter_application_3/pages/menu_page.dart';
import 'package:flutter_application_3/pages/search_page.dart';
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


     

  PageController _pageController = PageController();
  List<Widget> _screens = [Search(), /*News(),*/ Menu()];

  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
  /* appBar: AppBar(
       backgroundColor: Color.fromARGB(255, 3, 112, 201),
       title: Text(
          'វចនានុក្រមសំណង់',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),*/
      body: PageView(
        
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex, // Set current index for initial selection
        selectedItemColor: Colors.blue, // Color for selected item
        unselectedItemColor: Colors.grey, // Color for unselected items
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: ('ស្វែងរក'), // Khmer label for Search
          ),
        /*  BottomNavigationBarItem(
            icon: Icon(
              Icons.newspaper,
            ),
            label: ('ព័ត៏មាន'), // Khmer label for News
          ),*/
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: ('ផ្សែងៗ'), // Khmer label for More
          ),
        ],
      ),

    );

  }
}
