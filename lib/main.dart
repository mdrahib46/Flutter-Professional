import 'package:flutter/material.dart';
import 'package:flutter_for_professional/counter_controller.dart';
import 'package:flutter_for_professional/homeScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(FlutterForProfessional());
}

class FlutterForProfessional extends StatefulWidget {
  @override
  State<FlutterForProfessional> createState() => _FlutterForProfessionalState();
}

class _FlutterForProfessionalState extends State<FlutterForProfessional> {
  // int count = 0;
  // //
  // // void increment() {
  // //   count++;
  // //   setState(() {});
  // // }
  //
  // ThemeMode themeMode = ThemeMode.light;
  //
  // void toggleTheme() {
  //   themeMode = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterController(),

      child: MaterialApp(home: HomeScreen()),
    );
  }
}
