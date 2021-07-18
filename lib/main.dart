import 'package:flutter/material.dart';
// import 'package:instagram_clone/app_pages/welcom_page.dart';
//import 'package:instagram_clone/app_pages/sign_up_page.dart';
// import 'package:instagram_clone/app_pages/login_page.dart';
import 'package:instagram_clone/app_pages/home_screen.dart';
import 'package:instagram_clone/app_pages/search_page.dart';
import 'package:instagram_clone/app_pages/welcom_page.dart';
import 'package:instagram_clone/app_pages/home_page.dart';
import 'package:instagram_clone/app_pages/profile_page.dart';
import 'package:instagram_clone/app_pages/dm.dart';
void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.white),
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return welcome_page();
  }
}

