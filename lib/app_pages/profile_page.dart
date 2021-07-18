import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app_pages/profileview.dart';

class profilePage extends StatefulWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  _profilePageState createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  List<String> imagesForProfile = ['assets/home1.jpg','assets/home2.jpg','assets/home3.jpg','assets/home4.jpg','assets/story2.jpg',
    'assets/home1.jpg','assets/story5.jpg','assets/story3.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: NeverScrollableScrollPhysics(),
        headerSliverBuilder: (context, isScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.white,
              collapsedHeight: 180.0,
              expandedHeight: 150.0,
              flexibleSpace: profileView(),
            ),
          ];
        },
        body: Container(
          color: Colors.white,
          child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 12.0,
              children: <String>['assets/home1.jpg','assets/home2.jpg','assets/home3.jpg','assets/home4.jpg','assets/story2.jpg',
                'assets/home1.jpg','assets/story5.jpg','assets/story3.jpg'].map((String asset){
                  return GridTile(
                    child: Image.asset(asset, fit: BoxFit.cover),
                  );
              }).toList(),
          ),
        ),
      ),
    );
  }
}

