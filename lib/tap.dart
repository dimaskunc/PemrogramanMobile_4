import 'package:flutter/material.dart';

class TapDemo extends StatefulWidget {
@override
_TapDemoState createState() => _TapDemoState();
}
class _TapDemoState extends State<TapDemo> {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Demo Gesture'),
centerTitle: false,
actions: <Widget>[
  TextButton(
    child: Text(
      'Form Page', style: TextStyle(color: Colors.white),
    ),
    onPressed: () {Navigator.pushNamed(context, '/form');},
    ),
    TextButton(
    child: Text(
      ' DropDown Page', style: TextStyle(color: Colors.white),
    ),
    onPressed: () {Navigator.pushNamed(context, '/dropdown');},
    ),
    TextButton(
    child: Text(
      'Toast Page', style: TextStyle(color: Colors.white),
    ),
    onPressed: () {Navigator.pushNamed(context, '/toast');},
    ),
],
),
body: new Center(child: GestureDetector(
onTap: () {
print('Area kotak telah ditekan');
},
child: Container(
height: 60.0,
width: 120.0,
padding: EdgeInsets.all(10.0),
decoration: BoxDecoration(
color: Colors.blueGrey,
borderRadius: BorderRadius.circular(15.0),
),
child: Center(child: Text('Tekan')),
)
)),
);
}
}