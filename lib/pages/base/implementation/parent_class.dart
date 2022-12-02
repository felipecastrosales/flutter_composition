import 'package:flutter/material.dart';

import 'page_model.dart';

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
  Widget child2 = const Text('declared in parent class');
  Widget child3 = Stack(
    children: [
      Container(color: Colors.red, height: 100, width: 100),
      const Text('child3 parent'),
    ],
  );
  String title = 'ParentClass';

  @override
  Widget build(BuildContext context) {
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
