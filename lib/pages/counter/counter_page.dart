import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'controller/counter_controller.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({
    super.key,
    this.counterText,
  });

  final String? counterText;

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    debugPrint('CounterPage build()');
    return ChangeNotifierProvider<CounterController>(
      create: (_) => CounterController(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Counter Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Consumer<CounterController>(
                builder: (context, controller, child) => Text(
                  widget.counterText ?? '${controller.counter}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Builder(
          builder: (context) {
            final controller = context.read<CounterController>();
            return FloatingActionButton(
              onPressed: () => controller.increment(),
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            );
          },
        ),
      ),
    );
  }
}
