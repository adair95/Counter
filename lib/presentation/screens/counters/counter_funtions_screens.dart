import 'package:flutter/material.dart';

class CounterFuntionsScreens extends StatefulWidget {
  const CounterFuntionsScreens({super.key});

  @override
  State<CounterFuntionsScreens> createState() => _CounterFuntionsScreensState();
}

class _CounterFuntionsScreensState extends State<CounterFuntionsScreens> {
  int counterClik = 0;
  String clicksChange = 'Click';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Counter Funtions'),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  counterClik = 0;
                });
              },
            ),
          ],
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                counterClik = 0;
                setState(() {});
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                if (counterClik == 0) return;
                setState(() {
                  counterClik--;
                });
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  counterClik++;
                });
              },
            ),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      enableFeedback: true,
      foregroundColor: Colors.black,
      backgroundColor: const Color.fromARGB(255, 120, 174, 203),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
