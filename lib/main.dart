import 'package:flutter/material.dart';
import 'form.dart';
import 'dropdown.dart';
import 'tap.dart';
import 'toast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
      '/': (context) => TapDemo(),
      '/form': (context) => FormDemo(),
      '/dropdown': (context) => DropdownDemo(),
      '/toast': (context) => ToastDemo(),
  },
  debugShowCheckedModeBanner: false,
    );
    
  }
}


