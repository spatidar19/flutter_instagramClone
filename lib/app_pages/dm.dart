import 'package:flutter/material.dart';

class messages extends StatelessWidget {

  List<String> imagesForProfile = ['assets/home1.jpg','assets/home2.jpg','assets/home3.jpg','assets/home4.jpg','assets/story2.jpg',
    'assets/home1.jpg','assets/story5.jpg','assets/story3.jpg'];
  List<String> names = ['Tony','Loki','Steve','Dhoni','Thor','Peter','Amay','Hement'];
  List<String> msg = ['Hi','Hello','WhatsApp','All good','how are you','long time no see','hi','sorry!!'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios, size: 30.0,),
              color: Colors.black,
            ),
            title: Center(child: Text('sarthak_patidar', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.black),),),
            actions: [
              IconButton(
                onPressed: (){
                },
                icon: Icon(Icons.add, size: 30.0,),
                color: Colors.black,
              ),
            ],
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                child: SizedBox(
                  height: 30.0,
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Search',
                      icon: Icon(Icons.search_outlined),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index){
                    return Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(backgroundImage: AssetImage(this.imagesForProfile[index]),),
                          title: Text(this.names[index]),
                          subtitle: Text(this.msg[index]),
                          trailing: Icon(Icons.camera_alt_outlined),
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

