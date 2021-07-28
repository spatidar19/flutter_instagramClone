import 'package:flutter/material.dart';
import 'package:instagram_clone/app_pages/welcom_page.dart';


class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primaryColor: Colors.white,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black)),
          textTheme: TextTheme(title: TextStyle(color: Colors.black))
      ),
      home: welcome_page(),
      // home: email == null ? Home() : firstPage(),
    );
  }
}
