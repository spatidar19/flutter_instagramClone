import 'package:flutter/material.dart';
import 'package:instagram_clone/app_pages/home_screen.dart';
import 'package:instagram_clone/app_pages/search_page.dart';
import 'package:instagram_clone/app_pages/liked_page.dart';
import 'package:instagram_clone/app_pages/profile_page.dart';
import 'package:instagram_clone/app_pages/add_page.dart';

class firstPage extends StatefulWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  _firstPageState createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  int _currentindex = 0;
  void onTapped(int index){
    setState(() {
      this._currentindex = index;
    });
  }
  final List<Widget> _children = [homePage(), searchPage(), addPage(), likedPage(), profilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: _currentindex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled)),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit)),
          BottomNavigationBarItem(icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
