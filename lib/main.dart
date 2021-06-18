import 'package:flutter/material.dart';
import 'furniture_shoping_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Furniture(),
    );
  }
}
