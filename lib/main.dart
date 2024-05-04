import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counters/counter_funtions_screens.dart';
//import 'package:hello_world_app/presentation/screens/counters/counter_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true,
            colorSchemeSeed: const Color.fromARGB(255, 26, 255, 0)),
        home: const CounterFuntionsScreens());
  }
}
