import 'package:flutter/material.dart';

class ParentClass extends StatefulWidget {
  const ParentClass({super.key});
  final String varFromParent = 'foo';

  @override
  State<StatefulWidget> createState() => ParentClassState<ParentClass>();
}

class ParentClassState<T extends StatefulWidget> extends State<T> {
  String parentText = 'text coming from parent class';
  Widget child = const Text(
    // 'Parent class, $parentText, ${widget.varFromParent}',
    'Parent class',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ParentClass'),
      ),
      body: Center(
        child: child,
      ),
    );
  }
}
