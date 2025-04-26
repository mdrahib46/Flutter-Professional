import 'package:flutter/material.dart';
import 'package:flutter_for_professional/counter_controller.dart';
import 'package:flutter_for_professional/settings_screen.dart';

final CounterController counterController = CounterController();

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isEnable = false;

  // int count = 0;
  //
  // void _increment() {
  //   count++;
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Intro Project')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
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

            ListenableBuilder(
              listenable: counterController,
              builder: (context, child) {
                return Text(
                  '${counterController.count}',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
              },
              child: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}

// class ThemeController extends InheritedWidget {
//   final ThemeMode themeMode;
//   final void Function() toggleTheme;
//
//   const ThemeController({
//     required this.themeMode,
//     required this.toggleTheme,
//     required Widget child,
//     super.key,
//   }) : super(child: child);
//
//   static ThemeController? of(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<ThemeController>();
//   }
//
//   @override
//   bool updateShouldNotify(covariant ThemeController oldWidget) {
//     return oldWidget.themeMode != themeMode;
//   }
// }
