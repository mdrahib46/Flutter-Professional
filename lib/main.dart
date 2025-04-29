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

  final CounterController counterController = CounterController();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: counterController),
        ChangeNotifierProvider(create: (_) => CounterController(), lazy: false),
      ],
      child: MaterialApp(home: HomeScreen()),
    );
  }
}
