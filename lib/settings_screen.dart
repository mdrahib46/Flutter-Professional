import 'package:flutter/material.dart';
import 'package:flutter_for_professional/counter_controller.dart';
import 'package:provider/provider.dart';

// final CounterController counterController = CounterController();

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final counterController = context.read<CounterController>();
    return Scaffold(
      appBar: AppBar(title: Text('Setting Screen')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // counterController.increment();
          // Provider.of<CounterController>(context, listen: false).increment();
          context.read<CounterController>().increment();
        },

        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            Consumer<CounterController>(
              builder: (context, counter, child) {
                return Text(
                  '${counter.count}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
