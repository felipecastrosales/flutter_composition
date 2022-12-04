import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/counter_controller.dart';

class CounterPageModel extends StatelessWidget {
  const CounterPageModel({
    super.key,
    required this.title,
    required this.pageText,
  });

  final String title, pageText;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterController>(
      create: (_) => CounterController(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(pageText),
              Consumer<CounterController>(
                builder: (context, controller, child) => Text(
                  controller.counter.toString(),
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
