// I get this example from: https://stackoverflow.com/a/62856604/13096514

import 'package:flutter/material.dart';
import 'package:flutter_composition/pages/base/base.dart';

class ChildClass extends WidgetFoo {
  const ChildClass({super.key});

  @override
  State<StatefulWidget> createState() => _ChildClassState();
}

class _ChildClassState extends WidgetFooState<ChildClass> {
  @override
  String getText() {
    return 'ChildClass, $varFromFooState, ${widget.varFromFoo}';
  }
}
