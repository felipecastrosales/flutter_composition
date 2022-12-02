import 'package:flutter/material.dart';

import 'parent_class.dart';

class ChildClass extends ParentClass {
  const ChildClass({super.key});

  @override
  State<StatefulWidget> createState() => _ChildClassState();
}

class _ChildClassState extends ParentClassState<ChildClass> {
  @override
  Widget build(BuildContext context) {
    // parentText = 'text coming from child class';
    child = Text(
      'ChildClass, $parentText, ${widget.varFromParent}',
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChildClass'),
      ),
      body: Center(
        child: child,
      ),
    );
  }
}
