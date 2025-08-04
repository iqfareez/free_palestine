import 'package:flutter/material.dart';

import 'palestine_flag.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Free Palestine',
      theme: ThemeData(primaryColor: Colors.black),
      home: const PalestineFlag(),
    );
  }
}
