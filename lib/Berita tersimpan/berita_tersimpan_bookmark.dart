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
  List<bool> _isBookmarked = [false, false, false, false]; // Status bookmark tiap item

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _toggleBookmark(int index) {
    setState(() {
      _isBookmarked[index] = !_isBookmarked[index];
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
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: Icon(Icons.person, color: Colors.grey),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          centerTitle: false,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Berita di Simpan', // Judul utama
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20), // Spasi antara judul dan pencarian
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Pencarian ...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    _buildNewsItem(
                        index: 0,
                        category: "Aremania",
                        title:
                            "Presidium Aremania Buka Lebar Pintu Sekretariat Untuk ...",
                        date: "4 Oktober 2024"),
                    _buildNewsItem(
                        index: 1,
                        category: "Aremania",
                        title:
                            "Arema Menjalani 4 Laga Tandang Beruntun, Waktunya ...",
                        date: "9 September 2024"),
                    _buildNewsItem(
                        index: 2,
                        category: "Berita Arema",
                        title:
                            "Dalberto Luan Belo Menyala, Jalani Latihan Fisik Arema ...",
                        date: "6 Oktober 2024"),
                    _buildNewsItem(
                        index: 3,
                        category: "Fokus",
                        title:
                            "5 Fakta Menarik Shulton Fajar, Local Hero yang Dipulangkan ...",
                        date: "10 Oktober 2024"),
                  ],
                ),
              ),
            ],
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

  Widget _buildNewsItem(
      {required int index,
      required String category,
      required String title,
      required String date}) {
    return Card(
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            child: Image.asset('assets/berita_image.png', fit: BoxFit.cover), // Gambar berita
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category, // Menampilkan kategori berita
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(height: 5),
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 10),
                  Text(date),
                ],
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              _isBookmarked[index] ? Icons.bookmark : Icons.bookmark_border,
              color: Colors.blueAccent,
            ),
            onPressed: () {
              _toggleBookmark(index); // Mengubah status bookmark
            },
          ),
        ],
      ),
    );
  }
}
