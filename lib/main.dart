import 'package:flutter/material.dart';
import 'package:flutter_wax_app/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wax App",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.deepOrangeAccent,
      ),
      home: Home(),
    );
  }
}
