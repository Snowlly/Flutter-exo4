import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DarkDashboard(),
    );
  }
}

class DarkDashboard extends StatelessWidget {
  const DarkDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final bg = Colors.grey.shade900;
    final card = Colors.grey.shade800;
    final muted = Colors.blueGrey.shade300;

    Widget category({
      required IconData icon,
      required Color color,
      required String title,
      required String subtitle,
    }) {
      return Container(
        decoration: BoxDecoration(
          color: card,
          borderRadius: BorderRadius.circular(28),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: color.withOpacity(.25),
              child: Icon(icon, color: color, size: 28),
            ),
            const SizedBox(height: 24),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 6),
            Text(subtitle, style: TextStyle(color: muted, fontSize: 16)),
          ],
        ),
      );
    }

    Widget activity({
      required IconData icon,
      required Color color,
      required String title,
      required String subtitle,
    }) {
      return Container(
        decoration: BoxDecoration(
          color: card,
          borderRadius: BorderRadius.circular(28),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor: color.withOpacity(0.25),
              child: Icon(icon, color: color, size: 28),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(subtitle, style: TextStyle(color: muted, fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bonsoir',
                          style: TextStyle(
                            color: muted,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'Marie',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.grey.shade800,
                    child: const Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 1.05,
                children: [
                  category(
                    icon: Icons.music_note,
                    color: const Color(0xFFFF6FA7),
                    title: 'Musique',
                    subtitle: '23 playlists',
                  ),
                  category(
                    icon: Icons.camera_alt,
                    color: const Color(0xFF2EC7B6),
                    title: 'Photos',
                    subtitle: '156 images',
                  ),
                  category(
                    icon: Icons.book,
                    color: const Color(0xFFF2C94C),
                    title: 'Lecture',
                    subtitle: '5 livres',
                  ),
                  category(
                    icon: Icons.fitness_center,
                    color: const Color(0xFFFF6B6B),
                    title: 'Sport',
                    subtitle: '12 exercices',
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                'Activité récente',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 16),
              activity(
                icon: Icons.play_circle_filled,
                color: const Color(0xFFFF6FA7),
                title: 'Playlist Chill',
                subtitle: 'Écoutée il y a 2h',
              ),
              const SizedBox(height: 14),
              activity(
                icon: Icons.camera_alt,
                color: const Color(0xFF2EC7B6),
                title: 'Photo de vacances',
                subtitle: 'Ajoutée hier',
              ),
              const SizedBox(height: 14),
              activity(
                icon: Icons.menu_book_rounded,
                color: const Color(0xFFF2C94C),
                title: 'Chapitre 5 terminé',
                subtitle: 'Il y a 3 jour',
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.explore),
                  label: const Text('Explorer'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6C63FF),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
