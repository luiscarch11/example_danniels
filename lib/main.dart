import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'application/counter_notifier.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ChangeNotifierProvider(
        create: (context) => CounterNotifier(),
        child: Builder(builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Material App Bar'),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                context.read<CounterNotifier>().increment();
              },
              child: const Text('+'),
            ),
            body: Center(
              child: Text(context.watch<CounterNotifier>().state.toString()),
            ),
          );
        }),
      ),
    );
  }
}
