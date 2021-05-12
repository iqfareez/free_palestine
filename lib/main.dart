import 'package:flutter/material.dart';
import 'package:free_palestine/palestine_flag.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Free Palestine',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PalestineFlag(),
    );
  }
}
