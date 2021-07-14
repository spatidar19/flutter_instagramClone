import 'package:instagram_clone/app_pages/home_page.dart';
import 'package:instagram_clone/app_pages/home_screen.dart';
import 'package:instagram_clone/app_pages/welcom_page.dart';
import 'package:flutter/material.dart';

class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  _login_pageState createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
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
                obscureText: true,
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
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return firstPage();
                }));
              },
                child: Text('Log in'),
                style: ElevatedButton.styleFrom(minimumSize: Size(400, 45)),
              ),
            ),
            Container(height: 50.0,),
            Center(child: Text('OR')),
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
