import 'package:flutter/material.dart';

class TentangPage extends StatelessWidget {
  const TentangPage({super.key});

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
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset('assets/images/logo.png', width: 120, height: 120),

            const SizedBox(height: 20),

            const Text(
              'Tentang Pocinui',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            const Text(
              'Pocinui adalah bimbingan belajar yang membantu siswa '
              'memahami pelajaran dengan cara yang lebih mudah, '
              'terarah, dan menyenangkan.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, height: 1.5),
            ),

            const SizedBox(height: 30),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Icon(Icons.school, size: 50, color: Colors.blue),

                    const SizedBox(height: 10),

                    const Text(
                      'Visi',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'Menjadi tempat belajar yang membantu siswa '
                      'berkembang secara akademik dan percaya diri.',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
