import 'package:flutter/material.dart';

import 'select_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Composition',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SelectPages(),
    );
  }
}
