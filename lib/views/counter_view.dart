import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/counter_provider.dart';

class CounterView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterState = ref.watch(counterViewModelProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Counter MVVM OOP')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count: ${counterState.count}'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => ref.read(counterViewModelProvider.notifier).increment(),
                  child: Text('Increment'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => ref.read(counterViewModelProvider.notifier).decrement(),
                  child: Text('Decrement'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}