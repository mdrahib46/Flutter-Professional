import 'package:flutter/material.dart';
import 'package:flutter_for_professional/counter_controller.dart';
import 'package:flutter_for_professional/settings_screen.dart';
import 'package:provider/provider.dart';

// final CounterController counterController = CounterController();

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  bool _isEnable = false;

  @override
  Widget build(BuildContext context) {
    // final counterController = context.read<CounterController>().count;
    return Scaffold(
      appBar: AppBar(title: Text('Intro Project')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //there are two way
          // counterController.increment();
          // Provider.of<CounterController>(context, listen: false).increment;
          context.read<CounterController>().increment();
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
                    // setState(() {});
                  },
                ),
              ],
            ),

            Consumer<CounterController>(
              builder: (context, counter, child) {
                return Text(
                  '${counter.count}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
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
