import 'package:flutter/material.dart';
import 'package:pocinui/pages/program_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,

        title: Row(
          children: [
            Image.asset('assets/images/logo.png', width: 40, height: 40),

            const SizedBox(width: 10),

            const Text(
              'Pocinui',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/belajar.png',
                      width: double.infinity,
                      height: 220,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'Bimbingan Belajar Pocinui',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'Belajar lebih mudah, menyenangkan, dan terarah bersama Pocinui.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),

                  const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProgramPage(),
                        ),
                      );
                    },
                    child: const Text('Daftar Sekarang'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              'Program Belajar',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  programCard(
                    Icons.calculate,
                    'Matematika',
                    'Belajar matematika dengan materi yang mudah dipahami.',
                  ),

                  programCard(
                    Icons.science,
                    'IPA',
                    'Pelajari Fisika, Kimia, dan Biologi bersama guru Pocinui.',
                  ),

                  programCard(
                    Icons.language,
                    'Bahasa Inggris',
                    'Tingkatkan kemampuan grammar, vocabulary, dan speaking.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.menu_book), label: 'Program'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Guru'),
          NavigationDestination(icon: Icon(Icons.info), label: 'Tentang'),
        ],
      ),
    );
  }

  Widget programCard(IconData icon, String title, String description) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(icon, size: 50, color: Colors.blue),

            const SizedBox(width: 20),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
