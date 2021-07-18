import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class searchPage extends StatefulWidget {
  const searchPage({Key? key}) : super(key: key);

  @override
  _searchPageState createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  List<String> imagesForSearch = ['assets/home1.jpg','assets/home2.jpg','assets/home3.jpg','assets/home4.jpg','assets/story2.jpg',
      'assets/home1.jpg','assets/story5.jpg','assets/story3.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Container(
          height: 40.0,
          width: double.infinity,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                labelText: 'Search'
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(12.0),
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 12.0,
          itemCount: imagesForSearch.length,
          itemBuilder: (context, index){
            return Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: Image(image: AssetImage(imagesForSearch[index]),fit: BoxFit.cover,),
              ),
            );
          },
          staggeredTileBuilder: (index){
            return StaggeredTile.count(1, index.isEven ? 1.2:1.8);
          },
        ),
      ),
    );
  }
}

