import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorControllerDojo(),
    );
  }
}

class ColorControllerDojo extends StatefulWidget {
  const ColorControllerDojo({super.key});

  @override
  State<ColorControllerDojo> createState() => _ColorControllerDojoState();
}

class _ColorControllerDojoState extends State<ColorControllerDojo> {
  final controller = TextEditingController();

  final colors = <String, Color>{
    'rouge': Colors.red,
    'red': Colors.red,
    'vert': Colors.green,
    'green': Colors.green,
    'bleu': Colors.blue,
    'blue': Colors.blue,
    'jaune': Colors.yellow,
    'yellow': Colors.yellow,
    'orange': Colors.orange,
    'violet': Colors.purple,
    'purple': Colors.purple,
    'rose': Colors.pink,
    'pink': Colors.pink,
    'noir': Colors.black,
    'black': Colors.black,
    'blanc': Colors.white,
    'white': Colors.white,
    'gris': Colors.grey,
    'grey': Colors.grey,
    'gray': Colors.grey,
    'cyan': Colors.cyan,
    'turquoise': Colors.cyan,
    'marron': Colors.brown,
    'brown': Colors.brown,
    'secret': const Color.fromARGB(255, 0, 255, 72),
  };

  final display = <String, String>{
    'rouge': 'rouge',
    'red': 'red',
    'vert': 'vert',
    'green': 'green',
    'bleu': 'bleu',
    'blue': 'blue',
    'jaune': 'jaune',
    'yellow': 'yellow',
    'orange': 'orange',
    'violet': 'violet',
    'purple': 'purple',
    'rose': 'rose',
    'pink': 'pink',
    'noir': 'noir',
    'black': 'black',
    'blanc': 'blanc',
    'white': 'white',
    'gris': 'gris',
    'grey': 'grey',
    'gray': 'gray',
    'cyan': 'cyan',
    'marron': 'marron',
    'brown': 'brown',
    'secret': 'Moi aussi je peux faire un easter egg ;)',
  };

  Color current = const Color(0xFFE0E0E0);
  String name = '(il faut écrire une couleur ;) )';

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onTextChanged(String value) {
    final key = value.trim().toLowerCase();
    if (colors.containsKey(key)) {
      setState(() {
        current = colors[key]!;
        name = display[key]!;
      });
    } else {
      setState(() {
        current = const Color(0xFFE0E0E0);
        name = '(il faut écrire une couleur ;) )';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(width: 1),
    );

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: controller,
                onChanged: onTextChanged,
                decoration: InputDecoration(
                  labelText: 'Entrez une couleur en français ou en anglais',
                  hintText: 'ex: rouge, blue..',
                  border: border,
                  focusedBorder: border,
                ),
              ),
              const SizedBox(height: 24),
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: current,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black12, width: 1),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'La couleur est $name',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
