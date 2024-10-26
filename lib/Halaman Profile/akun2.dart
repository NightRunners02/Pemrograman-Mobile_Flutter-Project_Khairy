import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hapus label debug
      home: SettingsScreen(),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Tambahkan fungsi back
          },
        ),
        title: Text('Pengaturan', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: Icon(Icons.person, color: Colors.black),
            onPressed: () {
              // Tambahkan fungsi profile
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildListTile(Icons.person, 'Informasi Pribadi'),
            _buildListTile(Icons.privacy_tip, 'Kebijakan Privasi'),
            _buildListTile(Icons.security, 'Kata Sandi dan Keamanan'),
            _buildListTile(Icons.settings, 'Pengaturan'),
            SizedBox(height: 16.0),
            Align(
              alignment: Alignment.center, // Memusatkan tulisan More
              child: Text(
                'More',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8.0),
            _buildListTile(Icons.help, 'Pusat Bantuan'),
            _buildListTile(Icons.report_problem, 'Laporkan Masalah'),
            _buildListTile(Icons.question_answer, 'FAQ'),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(title),
      onTap: () {
        // Tambahkan aksi sesuai item
      },
    );
  }
}
