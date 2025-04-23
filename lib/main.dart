import 'package:flutter/material.dart';
import 'package:flutter_for_professional/settings_screen.dart';

void main() {
  runApp(FlutterForProfessional());
}

class FlutterForProfessional extends StatelessWidget {
  FlutterForProfessional({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isEnable = false;

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Intro Project')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dark Mode',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Switch(
                  value: _isEnable,
                  onChanged: (bool value) {
                    _isEnable = value;
                    setState(() {});
                  },
                ),
              ],
            ),
            Text(
              '$count',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsScreen(count: count),
                  ),
                );
                setState(() {});
              },
              child: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
