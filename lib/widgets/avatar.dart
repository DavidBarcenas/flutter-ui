import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class Avatar extends StatefulWidget {
  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  File _file;

  _pickImage() async {
    final file = await ImagePicker().getImage(source: ImageSource.gallery);
    setState(() {
      if(file != null) {
        _file = File(file.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      child: Stack(
        children: [
          _file == null
              ? SvgPicture.network(
                  'https://www.flaticon.com/svg/static/icons/svg/3237/3237447.svg')
              : ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.file(_file, height: 200.0, width: 200.0, fit: BoxFit.cover,),),
          Positioned(
              top: 0.0,
              right: 0.0,
              child: FloatingActionButton(
                child: Icon(
                  Icons.edit,
                  color: Colors.black87,
                ),
                backgroundColor: Color(0xffeeeeee),
                onPressed: _pickImage,
              ))
        ],
      ),
    );
  }
}
