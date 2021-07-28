import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram_clone/app_pages/welcom_page.dart';


class SignOut extends StatefulWidget {

  @override
  _SignOutState createState() => _SignOutState();
}

class _SignOutState extends State<SignOut> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Out'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: (){
              auth.signOut();
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return welcome_page();
              }));
            },
            child: Text('Sign Out', style: TextStyle(fontSize: 25.0, color: Colors.black, backgroundColor: Colors.white),),
          ),
        ),
      ),
    );
  }
}
