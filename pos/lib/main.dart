import 'package:flutter/material.dart';
import 'page/home.dart';
import 'themas/'

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Style Guide',
      theme: ThemeData(
        textTheme: ,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Style Guide'),
    );
  }
}
