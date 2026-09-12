import 'package:flutter/material.dart';

class ProgramPage extends StatelessWidget {
  const ProgramPage({super.key});

  final List<Map<String, dynamic>> programs = const [
    {
      'title': 'Matematika',
      'icon': Icons.calculate,
      'description':
          'Belajar matematika dengan metode yang mudah dipahami dan latihan soal terarah.',
    },
    {
      'title': 'Bahasa Indonesia',
      'icon': Icons.menu_book,
      'description':
          'Pelajari tata bahasa, teks, sastra, dan persiapan ujian Bahasa Indonesia.',
    },
    {
      'title': 'Bahasa Inggris',
      'icon': Icons.language,
      'description':
          'Tingkatkan kemampuan grammar, vocabulary, reading, dan speaking.',
    },
    {
      'title': 'Fisika',
      'icon': Icons.bolt,
      'description':
          'Memahami konsep fisika melalui penjelasan sederhana dan latihan soal.',
    },
    {
      'title': 'Kimia',
      'icon': Icons.science,
      'description':
          'Belajar unsur, senyawa, reaksi kimia, dan berbagai konsep kimia sekolah.',
    },
    {
      'title': 'Biologi',
      'icon': Icons.biotech,
      'description':
          'Pelajari makhluk hidup, sistem tubuh, genetika, dan lingkungan.',
    },
    {
      'title': 'Ekonomi',
      'icon': Icons.show_chart,
      'description':
          'Pelajari ekonomi dasar, pasar, akuntansi, dan aktivitas ekonomi.',
    },
    {
      'title': 'Geografi',
      'icon': Icons.public,
      'description':
          'Belajar tentang bumi, lingkungan, kependudukan, dan fenomena geografis.',
    },
    {
      'title': 'Sosiologi',
      'icon': Icons.groups,
      'description':
          'Pelajari masyarakat, interaksi sosial, perubahan sosial, dan budaya.',
    },
    {
      'title': 'PPKn',
      'icon': Icons.account_balance,
      'description':
          'Memahami Pancasila, kewarganegaraan, hukum, dan kehidupan bernegara.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Program Belajar',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
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
                    icon: program['icon'],
                  );
                },
              ),
            ],
          ),
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
}

class ProgramCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const ProgramCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
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
                child: Icon(icon, size: 38, color: Colors.blue),
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
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Membuka detail program $title')),
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
