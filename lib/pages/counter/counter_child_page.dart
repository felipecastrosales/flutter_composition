import 'package:flutter/material.dart';

class CounterCompositePage extends StatelessWidget {
  const CounterCompositePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyCounterCompositePage(title: 'Composite Page');
  }
}

class MyCounterCompositePage extends StatefulWidget {
  const MyCounterCompositePage({super.key, required this.title});
  final String title;

  @override
  State<MyCounterCompositePage> createState() => _MyCounterCompositePageState();
}

class _MyCounterCompositePageState extends State<MyCounterCompositePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
