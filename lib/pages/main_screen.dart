import 'package:elite/pages/atlas.dart';
import 'package:elite/pages/mina.dart';
import 'package:elite/pages/unsplash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedItem = 0;
  var _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            _selectedItem = index;
            print(_selectedItem);
          });
        },
        controller: _pageController,
        children: [
          Unsplash(),
          Atlas(),
          Mina(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedItem,
        selectedItemColor: Colors.black,
        onTap: (index) {
          _selectedItem = index;
          _pageController.animateToPage(
            _selectedItem,
            duration: Duration(microseconds: 200),
            curve: Curves.linear,
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Unsplash',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Atlas',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Mina',
          ),
        ],
      ),
    );
  }
}
