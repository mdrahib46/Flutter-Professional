import 'package:flutter/material.dart';
import 'package:flutter_for_professional/counter_controller.dart';

class SettingsScreen extends StatefulWidget {
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final CounterController? counterController = CounterController.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('Setting Screen')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController?.increment();
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '${counterController?.count}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
