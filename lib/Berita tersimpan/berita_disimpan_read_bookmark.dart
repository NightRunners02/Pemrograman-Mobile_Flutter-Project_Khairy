import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black), // Tombol back
            onPressed: () {
              // Aksi tombol back (navigasi kembali)
            },
          ),
          title: Text(
            'Berita di Simpan',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.bookmark, color: Colors.blueAccent),
              onPressed: () {
                // Aksi bookmark
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rekam Jejak Malut United, Sama Persis Dengan Pencapaian Arema',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      'Intip Lawan',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.circle, size: 5, color: Colors.grey),
                    SizedBox(width: 10),
                    Text(
                      '14 detik yang lalu',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Image.asset('assets/berita_image.png', fit: BoxFit.cover), // Gambar berita
                SizedBox(height: 16),
                Text(
                  'Tak banyak yang sadar jika rekam jejak Malut United ternyata sama persis dengan pencapaian Arema. Kedua tim bakal dipertemukan di Pekan 8 Liga 1 2024-2025, Sabtu (19/10/2024), pukul 15.30 WIB.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  'Pada pertandingan terakhirnya, Malut United mampu meraih kemenangan tandang di markas PSS Sleman 1-0, sesuatu yang gagal dilakukan Arema di Pekan 6 lalu. Arema menelan kekalahan 1-3 dari Super Elang Jawa.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  'Itu merupakan kemenangan kedua Malut United musim ini. Selain dua kemenangan, Laskar Kie Raha juga mencatatkan tiga hasil imbang dan dua kekalahan dalam tujuh pertandingan yang mereka jalani usai promosi dari kasta kedua.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  'Bukan cuma catatan jumlah kemenangan, hasil imbang, dan kekalahannya saja, jumlah gol dan kebobolan Malut United juga sama persis dengan Arema. Anak asuh pelatih Imran Nahumarury tersebut mencetak lima gol dan kebobolan tujuh kali.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  'Sebelum FIFA Matchday Oktober, baik Malut United maupun Arema sama-sama mengoleksi sembilan poin. Bedanya, Arema sedikit ‘lebih beruntung’ dengan menempati peringkat 10, sedangkan Malut United di bawahnya persis.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  'Inilah Rekam Jejak Malut United Sebelum Bertemu Arema',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Image.asset('assets/rekam_jejak.png', fit: BoxFit.cover), // Gambar rekam jejak
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // Posisi bayangan
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
      ),
    );
  }
}
