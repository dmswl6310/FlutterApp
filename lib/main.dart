import 'package:flutter/material.dart';
import './screen/list_screen.dart';
import './screen/detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food List App',
      home:ListScreen(),
    );
  }
  }
