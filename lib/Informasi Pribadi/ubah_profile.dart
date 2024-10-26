import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EditProfileScreen(),
    );
  }
}

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Tambahkan fungsi back
          },
        ),
        title: Text('Ubah Profil', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(Icons.check, color: Colors.white),
            onPressed: () {
              // Tambahkan fungsi simpan
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.orange,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      'https://example.com/path_to_profile_image.jpg', // Ganti dengan URL gambar profil Anda
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Ubah',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildListTile('Nama'),
                _buildListTile('Bio'),
                _buildListTile('Jenis Kelamin'),
                _buildListTile('Tanggal Lahir'),
                _buildListTile('No. Handphone'),
                _buildListTile('Email'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ListTile _buildListTile(String title) {
    return ListTile(
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: () {
        // Tambahkan aksi untuk setiap item
      },
    );
  }
}
