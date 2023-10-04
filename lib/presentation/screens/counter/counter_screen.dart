import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/screens/counter/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //Para el contador
    final int clickCounter = ref.watch(counterProvider);
    //Para el modo oscuro o claro
    final bool isDarkMode = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
             //Para el modo oscuro o claro
            icon: Icon(isDarkMode
                ? Icons.dark_mode_outlined
                : Icons.light_mode_outlined),
            onPressed: () {
               //Para el modo oscuro o claro
              ref.read(isDarkModeProvider.notifier).update((isDarkMode) => !isDarkMode);
            },
          ),
        ],
      ),
      body: Center(
          child: Text('Valor: $clickCounter',
              style: Theme.of(context).textTheme.titleLarge)),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          //Suma del contador
          ref.read(counterProvider.notifier).state++;
          // ref.read(counterProvider.notifier).update((state) => state +1);
        },
      ),
    );
  }
}
