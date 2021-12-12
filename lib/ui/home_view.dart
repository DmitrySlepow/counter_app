import 'package:counter_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    counter.initialize();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(
              builder: (_) => Text(
                '${counter.count}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () => counter.increment(),
                    child: const Text('+')),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () => counter.decrement(),
                    child: const Text('-')),
              ],
            )
          ],
        ));
  }
}
