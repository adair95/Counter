import 'package:flutter/material.dart';

class CounterScreens extends StatefulWidget {
  const CounterScreens({super.key});

  @override
  State<CounterScreens> createState() => _CounterScreensState();
}

class _CounterScreensState extends State<CounterScreens> {
  int counterClik = 0;
  String clicksChange = 'Click';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Counter Screens - This AppBar'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counterClik',
              style: const TextStyle(
                  fontSize: 160,
                  fontWeight: FontWeight.w100,
                  color: Color.fromARGB(255, 120, 174, 203)),
            ),
            Text(
              'Click${counterClik == 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          counterClik++,
          setState(() {}),
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
