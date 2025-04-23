import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterForProfessional());
}


class FlutterForProfessional extends StatelessWidget {
  const FlutterForProfessional({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Intro Project'),
          ),
        ),
    );
  }
}


