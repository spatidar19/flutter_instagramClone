import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app_pages/sign_up_page.dart';
import 'package:instagram_clone/app_pages/login_page.dart';

class welcome_page extends StatefulWidget {
  const welcome_page({Key? key}) : super(key: key);

  @override
  _welcome_pageState createState() => _welcome_pageState();
}

class _welcome_pageState extends State<welcome_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/insta_home.png', width: 200.0,),
            Container(height: 100.0,),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return login_page();
                }));
              },
                child: Center(child: Text('Log in')),
                style: ElevatedButton.styleFrom(minimumSize: Size(400, 45)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return sign_up();
                }));
              },
                child: Center(child: Text('Sign Up')),
                style: ElevatedButton.styleFrom(minimumSize: Size(400, 45)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

