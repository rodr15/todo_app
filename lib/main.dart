import 'package:flutter/material.dart';
import 'package:todo_app/examples/examples.dart';
import 'package:todo_app/pages/pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: PreviewPage());
  }
}
