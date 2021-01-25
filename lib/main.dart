import 'package:flutter/material.dart';

import 'package:flutter_api/home_page.dart';

void main() => runApp(ApiApp());

class ApiApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}