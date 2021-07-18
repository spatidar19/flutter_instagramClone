import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app_pages/dm.dart';


class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<String> imagesForProfile = ['assets/home1.jpg','assets/home2.jpg','assets/home3.jpg','assets/home4.jpg','assets/story2.jpg',
    'assets/home1.jpg','assets/story5.jpg','assets/story3.jpg'];
  List<String> names = ['Tony','Loki','Steve','Dhoni','Thor','Peter','Amay','Hement'];
  List<String> locations = ['Pune','Mumbai','Chennai','NYC','Burhanpur','Paris','Nasik','Thane'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            titleSpacing: 3,
            leading: Icon(Icons.camera_alt_outlined, size: 30.0, color: Colors.grey[700],),
            title: Center(child: Image(image: AssetImage('assets/insta_home.png'), height: 40.0,)),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.live_tv_outlined, size: 30.0,),),
              IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return messages();
                    }));
                  },
                  icon: Icon(Icons.send, size: 30.0,),
                ),
            ],
          ),
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10.0),
                height: 100.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(child: Column(
                      children: [
                        CircleAvatar(radius: 35.0, child: CircleAvatar(backgroundImage: AssetImage('assets/story1.jpg'), radius: 31.0,), backgroundColor: Colors.red[300],),
                        Text('My Story', style: TextStyle(fontSize: 12.0),),
                      ],
                    ),padding: EdgeInsets.all(3.0),
                    ),
                    Container(child: Column(
                      children: [
                        CircleAvatar(radius: 35.0, child: CircleAvatar(backgroundImage: AssetImage('assets/story2.jpg'), radius: 31.0,), backgroundColor: Colors.red[300],),
                        Text('Tony', style: TextStyle(fontSize: 12.0),),
                      ],
                    ),padding: EdgeInsets.all(3.0),
                    ),
                    Container(child: Column(
                      children: [
                        CircleAvatar(radius: 35.0, child: CircleAvatar(backgroundImage: AssetImage('assets/story3.jpg'), radius: 31.0,), backgroundColor: Colors.red[300],),
                        Text('WarHead', style: TextStyle(fontSize: 12.0),),
                      ],
                    ),padding: EdgeInsets.all(3.0),
                    ),
                    Container(child: Column(
                      children: [
                        CircleAvatar(radius: 35.0, child: CircleAvatar(backgroundImage: AssetImage('assets/story4.jpg'), radius: 31.0,), backgroundColor: Colors.red[300],),
                        Text('Vinnet', style: TextStyle(fontSize: 12.0),),
                      ],
                    ),padding: EdgeInsets.all(3.0),
                    ),
                    Container(child: Column(
                      children: [
                        CircleAvatar(radius: 35.0, child: CircleAvatar(backgroundImage: AssetImage('assets/story5.jpg'), radius: 31.0,), backgroundColor: Colors.red[300],),
                        Text('@may', style: TextStyle(fontSize: 12.0),),
                      ],
                    ),padding: EdgeInsets.all(3.0),
                    ),
                    Container(child: Column(
                      children: [
                        CircleAvatar(radius: 35.0, child: CircleAvatar(backgroundImage: AssetImage('assets/story6.jpg'), radius: 31.0,), backgroundColor: Colors.red[300],),
                        Text('dopeHead', style: TextStyle(fontSize: 12.0),),
                      ],
                    ),padding: EdgeInsets.all(3.0),
                    ),
                    Container(child: Column(
                      children: [
                        CircleAvatar(radius: 35.0, child: CircleAvatar(backgroundImage: AssetImage('assets/story7.jpg'), radius: 31.0,), backgroundColor: Colors.red[300],),
                        Text('Vinee', style: TextStyle(fontSize: 12.0),),
                      ],
                    ),padding: EdgeInsets.all(3.0),
                    ),
                    Container(child: Column(
                      children: [
                        CircleAvatar(radius: 35.0, child: CircleAvatar(backgroundImage: AssetImage('assets/story8.jpg'), radius: 31.0,), backgroundColor: Colors.red[300],),
                        Text('Adty@', style: TextStyle(fontSize: 12.0),),
                      ],
                    ),padding: EdgeInsets.all(3.0),
                    ),
                    Container(child: Column(
                      children: [
                        CircleAvatar(radius: 35.0, child: CircleAvatar(backgroundImage: AssetImage('assets/story9.jpg'), radius: 31.0,), backgroundColor: Colors.red[300],),
                        Text('Sarthak', style: TextStyle(fontSize: 12.0),),
                      ],
                    ),padding: EdgeInsets.all(3.0),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.grey[500],),
              Expanded(
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index){
                    return Column(
                      children: [
                        ListTile(
                          leading: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(),
                              image: DecorationImage(image: AssetImage(this.imagesForProfile[index])),
                            ),
                          ),
                          title: Text(this.names[index]),
                          subtitle: Text(this.locations[index]),
                          trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: (){},),
                        ),
                        Container(
                          height: 400.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(this.imagesForProfile[index]),fit: BoxFit.cover,)
                          ),
                        ),
                        ListTile(
                          leading: Wrap(children: [
                            Icon(Icons.favorite_border_outlined, size: 30.0,),
                            Icon(Icons.comment, size: 30.0,),
                            Icon(Icons.send, size: 30.0,)
                          ],),
                          trailing: Icon(Icons.bookmark_add_outlined, size: 30.0,),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

