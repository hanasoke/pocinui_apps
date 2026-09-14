import 'package:flutter/material.dart';
import 'pendaftaran_page.dart';

class ProgramDetailPage extends StatelessWidget {
  final String namaProgram;

  const ProgramDetailPage({super.key, required this.namaProgram});

  static const Map<String, Map<String, dynamic>> programData = {
    'Matematika': {
      'icon': 'assets/images/icons/icon_matematika.png',
      'guru': 'assets/images/guru/guru_matematika.png',
      'namaGuru': 'Guru Matematika',
      'deskripsi':
          'Program Matematika membantu siswa memahami konsep matematika '
          'dari dasar hingga tingkat lanjut melalui penjelasan yang mudah '
          'dipahami dan latihan soal terarah.',
      'harga': 'Rp250.000 / bulan',
    },

    'Bahasa Indonesia': {
      'icon': 'assets/images/icons/icon_bahasa_indonesia.png',
      'guru': 'assets/images/guru/guru_bahasa_indonesia.png',
      'namaGuru': 'Guru Bahasa Indonesia',
      'deskripsi':
          'Program Bahasa Indonesia membantu siswa memahami tata bahasa, '
          'teks, sastra, kemampuan membaca, menulis, serta mempersiapkan '
          'diri menghadapi ujian sekolah.',
      'harga': 'Rp225.000 / bulan',
    },

    'Bahasa Inggris': {
      'icon': 'assets/images/icons/icon_bahasa_inggris.png',
      'guru': 'assets/images/guru/guru_bahasa_inggris.png',
      'namaGuru': 'Guru Bahasa Inggris',
      'deskripsi':
          'Program Bahasa Inggris dirancang untuk meningkatkan kemampuan '
          'grammar, vocabulary, reading, writing, listening, dan speaking '
          'siswa secara bertahap.',
      'harga': 'Rp250.000 / bulan',
    },

    'Fisika': {
      'icon': 'assets/images/icons/icon_fisika.png',
      'guru': 'assets/images/guru/guru_fisika.png',
      'namaGuru': 'Guru Fisika',
      'deskripsi':
          'Program Fisika membantu siswa memahami berbagai konsep fisika '
          'seperti gerak, gaya, energi, listrik, gelombang, dan berbagai '
          'penerapannya dalam kehidupan sehari-hari.',
      'harga': 'Rp275.000 / bulan',
    },

    'Kimia': {
      'icon': 'assets/images/icons/icon_kimia.png',
      'guru': 'assets/images/guru/guru_kimia.png',
      'namaGuru': 'Guru Kimia',
      'deskripsi':
          'Program Kimia membantu siswa memahami atom, unsur, senyawa, '
          'reaksi kimia, perhitungan kimia, hingga konsep kimia tingkat SMA.',
      'harga': 'Rp275.000 / bulan',
    },

    'Biologi': {
      'icon': 'assets/images/icons/icon_biologi.png',
      'guru': 'assets/images/guru/guru_biologi.png',
      'namaGuru': 'Guru Biologi',
      'deskripsi':
          'Program Biologi membahas makhluk hidup, sel, sistem organ, '
          'genetika, ekosistem, evolusi, dan berbagai konsep biologi '
          'lainnya secara mudah dipahami.',
      'harga': 'Rp250.000 / bulan',
    },

    'Ekonomi': {
      'icon': 'assets/images/icons/icon_ekonomi.png',
      'guru': 'assets/images/guru/guru_ekonomi.png',
      'namaGuru': 'Guru Ekonomi',
      'deskripsi':
          'Program Ekonomi membantu siswa memahami kebutuhan manusia, '
          'pasar, kegiatan ekonomi, inflasi, perbankan, akuntansi dasar, '
          'dan materi ekonomi lainnya.',
      'harga': 'Rp250.000 / bulan',
    },

    'Geografi': {
      'icon': 'assets/images/icons/icon_geografi.png',
      'guru': 'assets/images/guru/guru_geografi.png',
      'namaGuru': 'Guru Geografi',
      'deskripsi':
          'Program Geografi membahas bumi, atmosfer, iklim, lingkungan, '
          'kependudukan, pemetaan, dan berbagai fenomena geografis.',
      'harga': 'Rp225.000 / bulan',
    },

    'Sosiologi': {
      'icon': 'assets/images/icons/icon_sosiologi.png',
      'guru': 'assets/images/guru/guru_sosiologi.png',
      'namaGuru': 'Guru Sosiologi',
      'deskripsi':
          'Program Sosiologi membantu siswa memahami masyarakat, '
          'interaksi sosial, kelompok sosial, konflik, perubahan sosial, '
          'dan berbagai fenomena dalam kehidupan masyarakat.',
      'harga': 'Rp225.000 / bulan',
    },

    'PPKn': {
      'icon': 'assets/images/icons/icon_pendidikan_kewarganegaraan.png',
      'guru': 'assets/images/guru/guru_pendidikan_kewarganegaraan.png',
      'namaGuru': 'Guru PPKn',
      'deskripsi':
          'Program PPKn membantu siswa memahami Pancasila, UUD 1945, '
          'hak dan kewajiban warga negara, demokrasi, hukum, dan kehidupan '
          'berbangsa dan bernegara.',
      'harga': 'Rp225.000 / bulan',
    },
  };

  @override
  Widget build(BuildContext context) {
    final data = programData[namaProgram];

    if (data == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Program')),
        body: const Center(child: Text('Data program tidak ditemukan')),
      );
    }

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
            // ICON PROGRAM
            Center(
              child: Image.asset(
                data['icon'],
                width: 120,
                height: 120,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 20),

            Center(
              child: Text(
                'Program $namaProgram',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            // DESKRIPSI
            _sectionTitle('Deskripsi Program'),

            const SizedBox(height: 10),

            Text(
              data['deskripsi'],
              style: const TextStyle(fontSize: 15, height: 1.6),
            ),

            const SizedBox(height: 30),

            // JENJANG
            _sectionTitle('Jenjang Belajar'),

            const SizedBox(height: 15),

            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _jenjangChip('SD'),
                _jenjangChip('SMP'),
                _jenjangChip('SMA'),
              ],
            ),

            const SizedBox(height: 30),

            // JADWAL
            _sectionTitle('Jadwal Belajar'),

            const SizedBox(height: 15),

            _scheduleCard('Senin & Rabu', '16.00 - 17.30 WIB'),

            _scheduleCard('Selasa & Kamis', '16.00 - 17.30 WIB'),

            _scheduleCard('Sabtu', '09.00 - 10.30 WIB'),

            const SizedBox(height: 30),

            // HARGA
            _sectionTitle('Harga'),

            const SizedBox(height: 15),

            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Row(
                  children: [
                    const Icon(Icons.payments, size: 45, color: Colors.blue),

                    const SizedBox(width: 16),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Biaya Belajar',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        const SizedBox(height: 5),

                        Text(
                          data['harga'],
                          style: const TextStyle(
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

            const SizedBox(height: 30),

            // GURU
            _sectionTitle('Guru Pengajar'),

            const SizedBox(height: 15),

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
                        data['guru'],
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(width: 16),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['namaGuru'],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 6),

                          Text(
                            'Pengajar $namaProgram Pocinui',
                            style: TextStyle(color: Colors.grey.shade600),
                          ),

                          const SizedBox(height: 8),

                          const Row(
                            children: [
                              Icon(Icons.star, size: 20, color: Colors.amber),
                              SizedBox(width: 5),
                              Text(
                                '4.9',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 35),

            // DAFTAR
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          PendaftaranPage(program: namaProgram),
                    ),
                  );
                },
                icon: const Icon(Icons.app_registration),
                label: Text(
                  'Daftar Program $namaProgram',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
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

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget _jenjangChip(String jenjang) {
    return Chip(
      avatar: const Icon(Icons.school, size: 18, color: Colors.blue),
      label: Text(jenjang),
    );
  }

  Widget _scheduleCard(String hari, String jam) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: const Icon(Icons.calendar_month, color: Colors.blue),
        title: Text(hari, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(jam),
      ),
    );
  }
}
