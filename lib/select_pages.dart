import 'package:flutter/material.dart';

import 'pages/base/base.dart';
import 'pages/base/implementation/child_class.dart';
import 'pages/base/implementation/parent_class.dart';
import 'pages/composite_page.dart';
import 'pages/default_page.dart';
import 'pages/parent_page.dart';

class SelectPages extends StatelessWidget {
  const SelectPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Pages'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DefaultPage(),
                  ),
                );
              },
              child: const Text('Default'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CompositePage(),
                  ),
                );
              },
              child: const Text('Composite'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ParentPage(),
                  ),
                );
              },
              child: const Text('Parent'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WidgetFoo(),
                  ),
                );
              },
              child: const Text('Base'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ParentClass(),
                  ),
                );
              },
              child: const Text('Parent Class'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChildClass(),
                  ),
                );
              },
              child: const Text('Child Class'),
            ),
          ],
        ),
      ),
    );
  }
}
