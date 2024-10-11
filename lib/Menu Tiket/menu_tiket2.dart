import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MatchScheduleScreen(),
      theme: ThemeData(fontFamily: 'Roboto'),
    );
  }
}

class MatchScheduleScreen extends StatefulWidget {
  @override
  _MatchScheduleScreenState createState() => _MatchScheduleScreenState();
}

class _MatchScheduleScreenState extends State<MatchScheduleScreen> {
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
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {},
            ),
            Image.asset(
              'assets/logo.png', // Sesuaikan dengan path logo
              height: 40,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian header dengan logo
            Container(
              color: Colors.blue.shade800,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/team_photo.jpg', // Sesuaikan dengan path gambar tim
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),

            // Jadwal pertandingan
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cek Jadwal Pertandingan",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Jangan Lewatkan Pertandingan Terbesar Musim Ini!",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Konten di bawah jadwal pertandingan (seperti gambar tim dengan waktu pertandingan)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  matchCard(),
                  SizedBox(height: 16),
                  matchCard(),
                ],
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Untuk lebih dari 3 item
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false, // Menghilangkan label
          showUnselectedLabels: false, // Menghilangkan label
          onTap: _onItemTapped, // Ketika item ditekan
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'Bookmark',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.confirmation_number), // Ikon tiket
              label: 'Ticket',
            ),
          ],
        ),
      ),
    );
  }

  // Widget untuk kartu pertandingan
  Widget matchCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              'assets/team_photo.jpg', // Sesuaikan dengan path gambar tim
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "19.00 WIB  •  10 Oktober 2024",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text("Stadion Glora Bung Karno"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
