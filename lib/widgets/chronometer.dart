import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chronometer extends StatefulWidget {
  final double initTime;

  const Chronometer({@required this.initTime});

  @override
  ChronometerState createState() => ChronometerState();
}

class ChronometerState extends State<Chronometer> with AfterLayoutMixin{
  double _time = 0;
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _time = widget.initTime;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

   @override
  void afterFirstLayout(BuildContext context) {
    showDialog(context: context, builder: (BuildContext context) => AlertDialog(
      title: Text('Este es un dialogo'),
    ));

  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _start() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer _) { 
      setState(() {
        _time = _time + 1;
      });
    });
  }

  void _stop() {
    _timer?.cancel();
    setState(() {
      _time = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30.0),
      child: Column(
        children: [
          Text(
            _time.toString(),
            style: TextStyle(fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                  child: Icon(
                    Icons.play_arrow_sharp,
                    size: 50,
                  ),
                  onPressed: _start),
              CupertinoButton(
                  child: Icon(
                    Icons.stop,
                    size: 50,
                  ),
                  onPressed: _stop)
            ],
          )
        ],
      ),
    );
  }

 
}
