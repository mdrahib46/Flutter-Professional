import 'package:flutter/material.dart';
import 'package:flutter_for_professional/counter_controller.dart';

final CounterController counterController = CounterController();

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Setting Screen')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            ListenableBuilder(
              listenable: counterController,
              builder: (context, child) {
                return Text(
                  '${counterController.count}',
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
