import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFEE6F57), // Hex color #EE6F57
        body: Stack(
          children: <Widget>[
            Align(
              alignment: const Alignment(
                  0, -0.5), // Adjust Y value to move image slightly upward
              child: Image.asset(
                'images/png-transparent-stick-man-painting-on-canvas-illustration-2.png',
                fit: BoxFit.contain, // Adjust this as needed
              ),
            ),
            Positioned(
              bottom: 85, // Space from the bottom of the screen
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Add action for the button here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xFF0C8CE9), // Hex color #0C8CE9
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // No rounding
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
