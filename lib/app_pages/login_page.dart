import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/app_pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  _login_pageState createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  late String _email, _password;
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios,),
        ),
      ),
      body: Container(
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 150.0,
                child: Center(child: Image.asset('assets/insta_home.png', width: 150.0,))
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _email = value;
                  });
                },
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    labelText: 'Username'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _password = value;
                  });
                },
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    labelText: 'Password'
                ),
              ),
            ),
            Container(
              height: 50.0,
              child: TextButton(
                onPressed: (){},
                child: Text('Forget password?', textAlign: TextAlign.right,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: ElevatedButton(onPressed: () {
                auth.signInWithEmailAndPassword(email: _email, password: _password);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  return firstPage();
                }));
              },
                child: Text('Log in'),
                style: ElevatedButton.styleFrom(minimumSize: Size(400, 45)),
              ),
            ),
            Container(height: 50.0,),
            Center(child: Text('OR')),
            SizedBox(height: 40.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                    onPressed: (){},
                    child: Text('Sign up')
                ),
              ],
            ),
            SizedBox(height: 90.0,),
            Container(
              height: 40.0,
              child: Center(child: Text('Instagram of Facebook')),
            ),
          ],
        ),
      ),
    );
  }
}
