import 'package:flutter/material.dart';
import 'pendaftaran_page.dart';

class ProgramDetailPage extends StatelessWidget {
  final String namaProgram;

  const ProgramDetailPage({super.key, required this.namaProgram});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Program $namaProgram',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/icons/icon_matematika.png',
                width: 120,
                height: 120,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 20),

            const Center(
              child: Text(
                'Program Matematika',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 10),

            const Center(
              child: Text(
                'Belajar matematika dengan metode yang mudah dipahami, '
                'latihan soal terarah, dan pendampingan guru Pocinui.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, height: 1.5),
              ),
            ),

            const SizedBox(height: 30),

            _buildSectionTitle('Deskripsi Program'),

            const SizedBox(height: 10),

            const Text(
              'Program Matematika Pocinui dirancang untuk membantu siswa '
              'memahami konsep matematika mulai dari dasar hingga tingkat '
              'lanjut. Materi disesuaikan dengan jenjang sekolah dan '
              'dilengkapi latihan soal serta pembahasan.',
              style: TextStyle(fontSize: 15, height: 1.5),
            ),

            const SizedBox(height: 25),

            _buildSectionTitle('Jenjang Belajar'),

            const SizedBox(height: 12),

            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _jenjangChip('SD'),
                _jenjangChip('SMP'),
                _jenjangChip('SMA'),
              ],
            ),

            const SizedBox(height: 25),

            _buildSectionTitle('Jadwal Belajar'),

            const SizedBox(height: 12),

            _infoCard(
              icon: Icons.calendar_month,
              title: 'Senin & Rabu',
              subtitle: '16.00 - 17.30 WIB',
            ),

            _infoCard(
              icon: Icons.calendar_month,
              title: 'Selasa & Kamis',
              subtitle: '16.00 - 17.30 WIB',
            ),

            _infoCard(
              icon: Icons.calendar_month,
              title: 'Sabtu',
              subtitle: '09.00 - 10.30 WIB',
            ),

            const SizedBox(height: 25),

            _buildSectionTitle('Harga'),

            const SizedBox(height: 12),

            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Padding(
                padding: EdgeInsets.all(18),
                child: Row(
                  children: [
                    Icon(Icons.payments, size: 40, color: Colors.blue),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Biaya Belajar',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Rp250.000 / bulan',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            _buildSectionTitle('Guru Pengajar'),

            const SizedBox(height: 12),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/images/guru/guru_matematika.png',
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(width: 16),

                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Guru Matematika',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 5),

                          Text(
                            'Pengajar Matematika Pocinui',
                            style: TextStyle(color: Colors.grey),
                          ),

                          SizedBox(height: 8),

                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber, size: 20),
                              SizedBox(width: 4),
                              Text('4.9'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const PendaftaranPage(program: 'Matematika'),
                    ),
                  );
                },
                icon: const Icon(Icons.app_registration),
                label: const Text(
                  'Daftar Program Matematika',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget _jenjangChip(String text) {
    return Chip(
      avatar: const Icon(Icons.school, size: 18, color: Colors.blue),
      label: Text(text),
    );
  }

  Widget _infoCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
      ),
    );
  }
}
