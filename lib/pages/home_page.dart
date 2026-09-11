import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pocinui',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(32),
              color: Colors.blue.shade50,
              child: Column(
                children: [
                  const Icon(Icons.school, size: 100, color: Colors.blue),

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
                    onPressed: () {},
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
