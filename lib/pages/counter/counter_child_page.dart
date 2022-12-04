import 'package:flutter/material.dart';

import 'counter_parent_page.dart';

class CounterChildPage extends CounterParentPage {
  const CounterChildPage({super.key});

  @override
  State<StatefulWidget> createState() => _CounterChildPageState();
}

class _CounterChildPageState extends CounterParentPageState<CounterChildPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Child Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counterText',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
