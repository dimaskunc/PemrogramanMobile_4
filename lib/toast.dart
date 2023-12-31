import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastDemo extends StatefulWidget {
@override
_ToastDemoState createState() => _ToastDemoState();
}
class _ToastDemoState extends State<ToastDemo> {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Demo Toast Widget',
home: Scaffold(
appBar: AppBar(
title: Text('Demo Toast Widget'),
),
body: Padding(
padding: EdgeInsets.all(15.0),
child: Center(
child: ElevatedButton(
child: Text('Tekan untuk menampilkan toast'),
onPressed: showToast,
),
),
)
),
debugShowCheckedModeBanner: false,
);
}
void showToast() {
Fluttertoast.showToast(
msg: 'Demo notifikasi toast',
toastLength: Toast.LENGTH_SHORT,
gravity: ToastGravity.BOTTOM,
timeInSecForIosWeb: 1,
backgroundColor: Colors.red,
textColor: Colors.yellow
);
}}