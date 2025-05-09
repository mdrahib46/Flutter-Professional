import 'package:flutter/material.dart';

// class CounterController extends InheritedWidget {
//   final int count;
//   final void Function() increment;
//
//   const CounterController({
//     super.key,
//     required super.child,
//     required this.count,
//     required this.increment,
//   });
//
//   static CounterController? of(BuildContext context) {
//     final CounterController? result =
//         context.dependOnInheritedWidgetOfExactType<CounterController>();
//     return result;
//   }
//
//   @override
//   bool updateShouldNotify(CounterController oldWidget) {
//     return oldWidget.count != count;
//   }
// }

class CounterController extends ChangeNotifier {
  // final CounterController counterController = CounterController();
  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}
