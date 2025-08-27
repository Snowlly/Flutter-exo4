import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primary = Colors.deepPurple;
    final bg = const Color(0xFFF5F7FB);

    return Scaffold(
      backgroundColor: bg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              const CircleAvatar(
                radius: 60,
                backgroundColor: primary,
                child: Icon(Icons.person, color: Colors.white, size: 56),
              ),
              const SizedBox(height: 24),
              const Text(
                'Salut Alex !',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF263238),
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Prêt pour une nouvelle journée ?',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blueGrey.shade400, fontSize: 18),
              ),
              const SizedBox(height: 32),
              Card(
                elevation: 8,
                shadowColor: Colors.black12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 28,
                  ),
                  child: Column(
                    children: [
                      const Icon(Icons.check_circle, size: 64, color: primary),
                      const SizedBox(height: 16),
                      const Text(
                        'Tâches du jour',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF263238),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Vous avez 4 tâches à compléter',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueGrey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 8,
                      shadowColor: Colors.black12,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 28),
                        child: Column(
                          children: [
                            const Text(
                              '12',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w800,
                                color: primary,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Terminées',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blueGrey.shade400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Card(
                      elevation: 8,
                      shadowColor: Colors.black12,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 28),
                        child: Column(
                          children: [
                            const Text(
                              '4',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w800,
                                color: Colors.redAccent,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'En cours',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blueGrey.shade400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  child: const Text('Commencer'),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
