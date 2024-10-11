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
  String selectedTab = 'Semua';

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onTabSelected(String tab) {
    setState(() {
      selectedTab = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              Image.asset('assets/logo.png', height: 40), // Logo Arema
              SizedBox(width: 10),
              Text('', style: TextStyle(color: Colors.blueAccent)),
            ],
          ),
          centerTitle: false,
          actions: [
            IconButton(
              icon: Icon(Icons.person, color: Colors.grey), // Ganti dengan icon orang
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Welcome!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    IconButton(
                      icon: Icon(Icons.notifications, color: Colors.grey), // Icon lonceng di kanan
                      onPressed: () {},
                    ),
                  ],
                ),
                Text("Hari ini, 13 Okt 2024"),
                SizedBox(height: 20),

                // Search Box (Pencarian)
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Pencarian...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Nav Bar di bawah pencarian
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildTabButton('Semua'),
                    _buildTabButton('Berita Terbaru'),
                    _buildTabButton('Trending'),
                    _buildTabButton('Arema Day'),
                    _buildTabButton('Aremania/Nita'),
                  ],
                ),
                SizedBox(height: 20),

                // Tabs dan konten Berita Terbaru
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Berita Terbaru", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    TextButton(onPressed: () {}, child: Text("Lihat Semua")),
                  ],
                ),
                SizedBox(height: 10),
                // Berita Terbaru Cards
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/berita_1.png', fit: BoxFit.cover),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rekam Jejak Malut United, Sama Persis Dengan Pencapaian Arema",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(Icons.remove_red_eye, size: 12),
                                      SizedBox(width: 5),
                                      Text("14 detik yang lalu"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/berita_2.png', fit: BoxFit.cover),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Jadwal Arema di Liga 1 2024–2025 Pekan 8",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(Icons.remove_red_eye, size: 12),
                                      SizedBox(width: 5),
                                      Text("2 jam yang lalu"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Tabs dan konten Trending
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Trending", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    TextButton(onPressed: () {}, child: Text("Lihat Semua")),
                  ],
                ),
                SizedBox(height: 10),
                // Trending Cards
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/berita_1.png', fit: BoxFit.cover),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Arema FC Perkuat Lini Serang, Rekrut Striker Asing Jelang Putaran ...",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(Icons.remove_red_eye, size: 12),
                                      SizedBox(width: 5),
                                      Text("Berita Arema • Senin, 4 Jun 24"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/berita_2.png', fit: BoxFit.cover),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "5 Fakta Menarik Wiliam Marcilio, Mastro Arema Dari Rio de Janeiro",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(Icons.remove_red_eye, size: 12),
                                      SizedBox(width: 5),
                                      Text("Focus • Senin, 4 Jun 24"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                                SizedBox(height: 20),
                // Tabs dan konten Berita Terbaru
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Arema Day", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    TextButton(onPressed: () {}, child: Text("Lihat Semua")),
                  ],
                ),
                SizedBox(height: 10),
                // Berita Terbaru Cards
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/berita_1.png', fit: BoxFit.cover),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Jadwal Arema di Liga 1 2024-2025 Pekan 8",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(Icons.remove_red_eye, size: 12),
                                      SizedBox(width: 5),
                                      Text("Arema Day • Rabu, 9 Okt 24"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/berita_2.png', fit: BoxFit.cover),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hasil Liga 1 2024-2025 PSIS Semarang vs Arema, 26 September ...",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(Icons.remove_red_eye, size: 12),
                                      SizedBox(width: 5),
                                      Text("Arema Day • Rabu, 9 Okt 24"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Tabs dan konten Berita Terbaru
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Aremania / nita", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    TextButton(onPressed: () {}, child: Text("Lihat Semua")),
                  ],
                ),
                SizedBox(height: 10),
                // Berita Terbaru Cards
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/berita_1.png', fit: BoxFit.cover),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Presidium Aremania Buka Lebar Pintu Sekretariat Untuk ...",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(Icons.remove_red_eye, size: 12),
                                      SizedBox(width: 5),
                                      Text("Aremania • Kamis, 6 Jun 24"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/berita_2.png', fit: BoxFit.cover),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hadiri Doa Bersama 2 Tahun Tragedi Kanjuruhan, Begini ...",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(Icons.remove_red_eye, size: 12),
                                      SizedBox(width: 5),
                                      Text("Aremania • Kamis, 6 Jun 24"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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

  // Fungsi untuk membuat Tab Button
  Widget _buildTabButton(String tabTitle) {
    return GestureDetector(
      onTap: () => _onTabSelected(tabTitle),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          color: selectedTab == tabTitle ? Colors.blueAccent : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.blueAccent),
        ),
        child: Text(
          tabTitle,
          style: TextStyle(
            color: selectedTab == tabTitle ? Colors.white : Colors.blueAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
