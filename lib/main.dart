import 'package:flutter/material.dart';
import 'package:gridview_exaple/di/setup_locator.dart';
import 'package:gridview_exaple/screens/gridview_screen.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: GridViewScreen(),
    );
  }
}
