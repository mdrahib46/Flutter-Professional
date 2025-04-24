import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({super.key, required this.count, required this.updateCount});

  int count;
  final VoidCallback updateCount;

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
          widget.count++;
          widget.updateCount();
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '${widget.count}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
