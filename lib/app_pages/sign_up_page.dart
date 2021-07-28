import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home_page.dart';


class sign_up extends StatefulWidget {
  const sign_up({Key? key}) : super(key: key);

  @override
  _sign_upState createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  late String _email, _password;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      labelText: 'Confirm Password'
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                child: ElevatedButton(onPressed: (){
                  auth.createUserWithEmailAndPassword(email: _email, password: _password);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  return firstPage();
                  }));
                },
                    child: Text('Sign up'),
                  style: ElevatedButton.styleFrom(minimumSize: Size(400, 45)),
                ),
              ),
              SizedBox(height: 40.0,),
              Center(child: Text('OR')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Have an account?'),
                  TextButton(
                      onPressed: (){},
                      child: Text('Log in')
                  ),
                ],
              ),
              SizedBox(height: 40.0,),
              Container(
                height: 40.0,
                child: Center(child: Text('Instagram of Facebook')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

