import 'package:flutter/material.dart';

import 'counter_page_model.dart';

class CounterParentPage extends StatefulWidget {
  const CounterParentPage({
    super.key,
    this.counterText,
  });

  final String? counterText;

  @override
  State<StatefulWidget> createState() =>
      CounterParentPageState<CounterParentPage>();
}

class CounterParentPageState<T extends StatefulWidget> extends State<T> {
  String title = 'Counter Parent Page';
  String pageText = 'PARENT | You have pushed the button this many times:';

  @override
  Widget build(BuildContext context) {
    debugPrint('CounterParentPage build()');
    return CounterPageModel(
      title: title,
      pageText: pageText,
    );
  }
}
