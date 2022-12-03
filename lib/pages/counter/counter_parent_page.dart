import 'package:flutter/material.dart';

class CounterParentPage extends StatelessWidget {
  const CounterParentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyCounterParentPage(title: 'Parent Page');
  }
}

class MyCounterParentPage extends StatefulWidget {
  const MyCounterParentPage({super.key, required this.title});
  final String title;

  @override
  State<MyCounterParentPage> createState() => _MyCounterParentPageState();
}

class _MyCounterParentPageState extends State<MyCounterParentPage> {
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
