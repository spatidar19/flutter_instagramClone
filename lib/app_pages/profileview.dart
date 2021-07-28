import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app_pages/signout.dart';

class profileView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.0,),
        Container(
          margin: EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image:
                      DecorationImage(image: AssetImage('assets/story1.jpg')),
                ),
              ),
              Column(
                children: [
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text('Posts')
                ],
              ),
              Column(
                children: [
                  Text(
                    '1101',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text('Followers')
                ],
              ),
              Column(
                children: [
                  Text(
                    '1374',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text('Following')
                ],
              ),
            ],
          ),

        ),
        Container(
          margin: EdgeInsets.only(left: 16.0),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'sarthak_patidar',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                TextSpan(
                    text: '\nThis is instagram\nUI clone\nFlutter',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 14.0,
                    )),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black12)),
          margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          height: 40.0,
          width: double.infinity,
          child: SizedBox(
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SignOut();
                }));
              },
              child: Text('Edit Profile', style: TextStyle(color: Colors.black),),
            ),
          ),
        ),
      ],
    );
  }
}
