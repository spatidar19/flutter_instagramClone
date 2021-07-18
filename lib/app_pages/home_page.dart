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

  final List<Widget> _children = [homePage(), searchPage(), addPage(), likedPage(), profilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentindex,
        onTap: (int index) => setState(() => this._currentindex = index),
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black12,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled, size: 30.0,), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined, size: 30.0,), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined, size: 30.0,), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined, size: 30.0,), label: 'Like'),
          BottomNavigationBarItem(icon: CircleAvatar(backgroundImage: AssetImage('assets/story1.jpg'),), label: 'profile'),
        ],
      ),
    );
  }
}
