import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorButtonDojo(),
    );
  }
}

class ColorButtonDojo extends StatefulWidget {
  const ColorButtonDojo({super.key});

  @override
  State<ColorButtonDojo> createState() => _ColorButtonDojoState();
}

class _ColorButtonDojoState extends State<ColorButtonDojo> {
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.yellow,
    Colors.pink,
  ];

  final List<String> names = [
    'Red',
    'Green',
    'Blue',
    'Orange',
    'Purple',
    'Yellow',
    'Pink',
  ];

  int index = 0;

  void nextColor() {
    setState(() {
      index = (index + 1) % colors.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final color = colors[index];
    final textOnButton = color.computeLuminance() > 0.5
        ? Colors.black
        : Colors.white;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: nextColor,
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 18,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                names[index],
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: textOnButton,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
