import 'package:flutter/material.dart';


class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.camera_alt_outlined, size: 40.0,),
            title: Center(child: Image(image: AssetImage('assets/insta_home.png'), height: 40.0,)),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.live_tv_outlined, size: 40.0,),),
              IconButton(onPressed: (){}, icon: Icon(Icons.send, size: 40.0,))
            ],
          ),
          body: Column(
            children: [
              Container(
                height: 100.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(child: Column(
                      children: [
                        CircleAvatar(radius: 35.0, child: CircleAvatar(backgroundImage: AssetImage('assets/story1.jpg'), radius: 31.0,), backgroundColor: Colors.red[500],),
                        Text('My Story', style: TextStyle(fontSize: 10.0),),
                      ],
                    ),padding: EdgeInsets.all(5.0),
                    ),
                    Container(child: Column(
                      children: [
                        CircleAvatar(radius: 35.0, child: CircleAvatar(backgroundImage: AssetImage('assets/story2.jpg'), radius: 31.0,), backgroundColor: Colors.red[500],),
                        Text('Tony', style: TextStyle(fontSize: 10.0),),
                      ],
                    ),padding: EdgeInsets.all(5.0),
                    ),
                    Container(child: Column(
                      children: [
                        CircleAvatar(radius: 35.0, child: CircleAvatar(backgroundImage: AssetImage('assets/story3.jpg'), radius: 31.0,), backgroundColor: Colors.red[500],),
                        Text('WarHead', style: TextStyle(fontSize: 10.0),),
                      ],
                    ),padding: EdgeInsets.all(5.0),
                    ),
                    Container(child: Column(
                      children: [
                        CircleAvatar(radius: 35.0, child: CircleAvatar(backgroundImage: AssetImage('assets/story4.jpg'), radius: 31.0,), backgroundColor: Colors.red[500],),
                        Text('Vinnet', style: TextStyle(fontSize: 10.0),),
                      ],
                    ),padding: EdgeInsets.all(5.0),
                    ),
                    Container(child: Column(
                      children: [
                        CircleAvatar(radius: 35.0, child: CircleAvatar(backgroundImage: AssetImage('assets/story5.jpg'), radius: 31.0,), backgroundColor: Colors.red[500],),
                        Text('@may', style: TextStyle(fontSize: 10.0),),
                      ],
                    ),padding: EdgeInsets.all(5.0),
                    ),
                    Container(child: Column(
                      children: [
                        CircleAvatar(radius: 35.0, child: CircleAvatar(backgroundImage: AssetImage('assets/story6.jpg'), radius: 31.0,), backgroundColor: Colors.red[500],),
                        Text('dopeHead', style: TextStyle(fontSize: 10.0),),
                      ],
                    ),padding: EdgeInsets.all(5.0),
                    ),
                    Container(child: Column(
                      children: [
                        CircleAvatar(radius: 35.0, child: CircleAvatar(backgroundImage: AssetImage('assets/story7.jpg'), radius: 31.0,), backgroundColor: Colors.red[500],),
                        Text('Vinee', style: TextStyle(fontSize: 10.0),),
                      ],
                    ),padding: EdgeInsets.all(5.0),
                    ),
                    Container(child: Column(
                      children: [
                        CircleAvatar(radius: 35.0, child: CircleAvatar(backgroundImage: AssetImage('assets/story8.jpg'), radius: 31.0,), backgroundColor: Colors.red[500],),
                        Text('Adty@', style: TextStyle(fontSize: 10.0),),
                      ],
                    ),padding: EdgeInsets.all(5.0),
                    ),
                    Container(child: Column(
                      children: [
                        CircleAvatar(radius: 35.0, child: CircleAvatar(backgroundImage: AssetImage('assets/story9.jpg'), radius: 31.0,), backgroundColor: Colors.red[500],),
                        Text('Sarthak', style: TextStyle(fontSize: 10.0),),
                      ],
                    ),padding: EdgeInsets.all(5.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

