import 'package:flutter/material.dart';

class GuruPage extends StatelessWidget {
  const GuruPage({super.key});

  final List<Map<String, String>> gurus = const [
    {
      'nama': 'Guru Matematika',
      'mapel': 'Matematika',
      'image': 'assets/images/guru/guru_matematika.png',
    },
    {
      'nama': 'Guru Bahasa Indonesia',
      'mapel': 'Bahasa Indonesia',
      'image': 'assets/images/guru/guru_bahasa_indonesia.png',
    },
    {
      'nama': 'Guru Bahasa Inggris',
      'mapel': 'Bahasa Inggris',
      'image': 'assets/images/guru/guru_bahasa_inggris.png',
    },
    {
      'nama': 'Guru Fisika',
      'mapel': 'Fisika',
      'image': 'assets/images/guru/guru_fisika.png',
    },
    {
      'nama': 'Guru Kimia',
      'mapel': 'Kimia',
      'image': 'assets/images/guru/guru_kimia.png',
    },
    {
      'nama': 'Guru Biologi',
      'mapel': 'Biologi',
      'image': 'assets/images/guru/guru_biologi.png',
    },
    {
      'nama': 'Guru Ekonomi',
      'mapel': 'Ekonomi',
      'image': 'assets/images/guru/guru_ekonomi.png',
    },
    {
      'nama': 'Guru Geografi',
      'mapel': 'Geografi',
      'image': 'assets/images/guru/guru_geografi.png',
    },
    {
      'nama': 'Guru Sosiologi',
      'mapel': 'Sosiologi',
      'image': 'assets/images/guru/guru_sosiologi.png',
    },
    {
      'nama': 'Guru PPKn',
      'mapel': 'Pendidikan Kewarganegaraan',
      'image': 'assets/images/guru/guru_pendidikan_kewarganegaraan.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Guru Pocinui',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            color: Colors.blue.shade50,
            child: const Column(
              children: [
                Icon(Icons.groups, size: 60, color: Colors.blue),

                SizedBox(height: 10),

                Text(
                  'Guru Pocinui',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 8),

                Text(
                  'Belajar bersama guru yang siap membantu kamu memahami setiap mata pelajaran.',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: gurus.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 14,
                mainAxisSpacing: 14,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                final guru = gurus[index];

                return Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              guru['image']!,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        const SizedBox(height: 12),

                        Text(
                          guru['nama']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),

                        const SizedBox(height: 5),

                        Text(
                          guru['mapel']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
