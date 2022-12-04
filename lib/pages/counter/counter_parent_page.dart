import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'controller/counter_controller.dart';

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
  String? counterText = '0';

  @override
  Widget build(BuildContext context) {
    debugPrint('CounterParentPage build()');
    return ChangeNotifierProvider<CounterController>(
      create: (_) => CounterController(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Counter Parent Page'),
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
                  counterText ?? '${controller.counter}',
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
