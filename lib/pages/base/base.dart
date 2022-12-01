// I get this example from: https://stackoverflow.com/a/62856604/13096514

import 'package:flutter/material.dart';

class WidgetFoo extends StatefulWidget {
  const WidgetFoo({super.key});
  final String varFromFoo = 'foo';

  @override
  State<StatefulWidget> createState() => WidgetFooState<WidgetFoo>();
}

// Don't make this class name private (beginning with _) to allow its usage in other modules.
class WidgetFooState<T extends StatefulWidget> extends State<T> {
  String varFromFooState = 'foo state';
  @override
  Widget build(BuildContext context) {
    return Text(getText());
  }

  String getText() {
    return 'WidgetFoo';
  }
}

class WidgetBar extends WidgetFoo {
  const WidgetBar({super.key});

  @override
  State<StatefulWidget> createState() => _WidgetBarState();
}

class _WidgetBarState extends WidgetFooState<WidgetBar> {
  @override
  String getText() {
    return 'WidgetBar, $varFromFooState, ${widget.varFromFoo}';
  }
}
