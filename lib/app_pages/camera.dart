import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class CameraPhoto extends StatefulWidget {
  const CameraPhoto({Key? key}) : super(key: key);

  @override
  _CameraPhotoState createState() => _CameraPhotoState();
}

class _CameraPhotoState extends State<CameraPhoto> {
  final imagePicker = ImagePicker();
  late File _image;
  Future getImage() async{
    final image = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image as File;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios, size: 30.0,),
        ),
        title: Text('Camera upload'),
      ),
      body: Center(
        child: _image == null ? Text('Image is not selected') : Image.file(_image)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          getImage();
        },
        child: Icon(Icons.camera_alt_outlined),
      ),
    );
  }
}

