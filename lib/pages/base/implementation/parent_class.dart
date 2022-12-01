import 'package:flutter/material.dart';

class ParentClass extends StatefulWidget {
  const ParentClass({super.key});
  final String varFromFoo = 'foo';

  @override
  State<StatefulWidget> createState() => ParentClassState<ParentClass>();
}

// Don't make this class name private (beginning with _) to allow its usage in other modules.
class ParentClassState<T extends StatefulWidget> extends State<T> {
  String varFromFooState = 'foo state';
  @override
  Widget build(BuildContext context) {
    return Text(getText());
  }

  String getText() {
    return 'ParentClass';
  }
}
