import 'package:flutter/material.dart';

import 'counter_page_model.dart';
import 'counter_parent_page.dart';

class CounterChildPage extends CounterParentPage {
  const CounterChildPage({super.key});

  @override
  State<StatefulWidget> createState() => _CounterChildPageState();
}

class _CounterChildPageState extends CounterParentPageState<CounterChildPage> {
  @override
  Widget build(BuildContext context) {
    String pageText = 'CHILD | You have pushed the button this many times:';
    debugPrint('CounterChildPage build()');

    return CounterPageModel(
      title: 'Counter Child Page',
      pageText: pageText,
    );
  }
}
