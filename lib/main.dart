import 'package:flutter/material.dart';
import 'package:flutter_wallpaperapp1/views/screen/homepage.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_wallpaperapp1/views/screen/secondarypage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
