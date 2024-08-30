import 'package:flutter/material.dart';

void main() {
  runApp(const CircularCounterApp());
}

class CircularCounterApp extends StatelessWidget {
  const CircularCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CircularCounterScreen(),
    );
  }
}

class CircularCounterScreen extends StatefulWidget {
  const CircularCounterScreen({super.key});

  @override
  CircularCounterScreenState createState() => CircularCounterScreenState();
}

class CircularCounterScreenState extends State<CircularCounterScreen> {
  int _counter = 0; // Initialize the counter to 0.

  void _incrementCounter() {
    setState(() {
      _counter = (_counter + 1) > 10
          ? 0
          : _counter +
              1; // logic to ensure that the increased counter value remains within the circular range of 0 to 10
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter = (_counter - 1) < 0
          ? 10
          : _counter -
              1; //logic to ensure that the decreased counter value remains within the circular range of 0 to 10
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circular Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter', //Display the counter value in the center of the screen.
              style: const TextStyle(fontSize: 48),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: const Text('Decrement'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Text('Increment'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
