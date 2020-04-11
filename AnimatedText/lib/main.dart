import 'package:allabouttext/catch_theCulprit.dart';
import 'package:allabouttext/loading_text.dart';
import 'package:allabouttext/rainy_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: CatchTheBurglar(),
    );
  }
}
