import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      child: Stack(
        children: [
          SvgPicture.network('https://www.flaticon.com/svg/static/icons/svg/3237/3237447.svg'),
          Positioned(
            top: 0.0,
            right: 0.0,
            child: FloatingActionButton(
              child: Icon(Icons.edit, color: Colors.black87,), 
              backgroundColor: Color(0xffeeeeee),
              onPressed: (){},
              )
            )
        ],
      ),
    );
  }
}