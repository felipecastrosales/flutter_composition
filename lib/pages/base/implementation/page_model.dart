import 'package:flutter/material.dart';

class PageModel extends StatelessWidget {
  const PageModel({
    super.key,
    required this.children,
    required this.title,
  });

  final List<Widget> children;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }
}
