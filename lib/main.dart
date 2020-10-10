import 'package:flutter/material.dart';
import 'page/home.dart';
import 'themes/text_theme.dart';

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
        textTheme: TextThemes.textTheme,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Style Guide'),
    );
  }
}
