import 'package:flutter/material.dart';
import 'program_detail_page.dart';

class ProgramPage extends StatelessWidget {
  const ProgramPage({super.key});

  final List<Map<String, dynamic>> programs = const [
    {
      'title': 'Matematika',
      'image': 'assets/images/icons/icon_matematika.png',
      'description':
          'Belajar matematika dengan metode yang mudah dipahami dan latihan soal terarah.',
    },
    {
      'title': 'Bahasa Indonesia',
      'image': 'assets/images/icons/icon_bahasa_indonesia.png',
      'description':
          'Pelajari tata bahasa, teks, sastra, dan persiapan ujian Bahasa Indonesia.',
    },
    {
      'title': 'Bahasa Inggris',
      'image': 'assets/images/icons/icon_bahasa_inggris.png',
      'description':
          'Tingkatkan kemampuan grammar, vocabulary, reading, dan speaking.',
    },
    {
      'title': 'Fisika',
      'image': 'assets/images/icons/icon_fisika.png',
      'description':
          'Memahami konsep fisika melalui penjelasan sederhana dan latihan soal.',
    },
    {
      'title': 'Kimia',
      'image': 'assets/images/icons/icon_kimia.png',
      'description':
          'Belajar unsur, senyawa, reaksi kimia, dan berbagai konsep kimia sekolah.',
    },
    {
      'title': 'Biologi',
      'image': 'assets/images/icons/icon_biologi.png',
      'description':
          'Pelajari makhluk hidup, sistem tubuh, genetika, dan lingkungan.',
    },
    {
      'title': 'Ekonomi',
      'image': 'assets/images/icons/icon_ekonomi.png',
      'description':
          'Pelajari ekonomi dasar, pasar, akuntansi, dan aktivitas ekonomi.',
    },
    {
      'title': 'Geografi',
      'image': 'assets/images/icons/icon_geografi.png',
      'description':
          'Belajar tentang bumi, lingkungan, kependudukan, dan fenomena geografis.',
    },
    {
      'title': 'Sosiologi',
      'image': 'assets/images/icons/icon_sosiologi.png',
      'description':
          'Pelajari masyarakat, interaksi sosial, perubahan sosial, dan budaya.',
    },
    {
      'title': 'PPKn',
      'image': 'assets/images/icons/icon_pendidikan_kewarganegaraan.png',
      'description':
          'Memahami Pancasila, kewarganegaraan, hukum, dan kehidupan bernegara.',
    },
  ];

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

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const Icon(Icons.school, size: 70, color: Colors.blue),
                    const SizedBox(height: 16),
                    const Text(
                      'Program Belajar Pocinui',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Pilih mata pelajaran yang ingin kamu pelajari bersama guru Pocinui.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                'Daftar Mata Pelajaran',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 16),

              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: programs.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.85,
                ),
                itemBuilder: (context, index) {
                  final program = programs[index];

                  return ProgramCard(
                    title: program['title'],
                    description: program['description'],
                    image: program['image'],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProgramCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const ProgramCard({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: () {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Program $title dipilih')));
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Image.asset(
                  image,
                  width: 50,
                  height: 50,
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 14),

              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Expanded(
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.fade,
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                ),
              ),

              const SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProgramDetailPage(namaProgram: title),
                      ),
                    );
                  },
                  child: const Text('Lihat Program'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
