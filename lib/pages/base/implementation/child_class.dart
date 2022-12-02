import 'package:flutter/material.dart';

import 'page_model.dart';
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
    child2 = const Text('declared in child class');
    Widget child3 = Stack(
      children: [
        Container(color: Colors.blue, height: 100, width: 100),
        const Text('child3 child'),
      ],
    );
    String title = 'ChildClass';

    return PageModel(
      title: title,
      children: [
        child,
        const Text('internal'),
        Text(parentText),
        child2,
        child3,
      ],
    );
  }
}
