import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Berita Arema',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BeritaAremaPage(),
    );
  }
}

class BeritaAremaPage extends StatefulWidget {
  @override
  _BeritaAremaPageState createState() => _BeritaAremaPageState();
}

class _BeritaAremaPageState extends State<BeritaAremaPage> {
  int _selectedCategoryIndex = 0; // Index kategori yang dipilih
  int _selectedIndex = 0;

  // Daftar kategori yang tersedia
  final List<String> categories = ['Editorial', 'Arema Putri', 'Arema Junior', 'Berita Foto'];

  // Fungsi untuk menangani perubahan kategori
  void _onCategorySelected(int index) {
    setState(() {
      _selectedCategoryIndex = index;
    });
  }

  // Fungsi untuk menangani perubahan pada bottom navigation
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),  // Icon garis 3
          onPressed: () {
            // Tambahkan fungsionalitas untuk drawer atau menu
          },
        ),
        title: Text('Berita Arema'),
        centerTitle: true, // Teks di tengah
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Tambahkan fungsionalitas untuk pencarian
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Main News Card (Large)
              MainNewsCard(
                title: 'Profil Kecamatan Kasembon, Kabupaten Malang',
                time: 'By Ongis Mbois • 2 jam yang lalu',
              ),
              SizedBox(height: 20),

              // Categories - Bagian Navigasi setelah berita utama
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(categories.length, (index) {
                  return GestureDetector(
                    onTap: () => _onCategorySelected(index),
                    child: CategoryButton(
                      title: categories[index],
                      selected: _selectedCategoryIndex == index, // True jika tombol ini yang dipilih
                    ),
                  );
                }),
              ),
              SizedBox(height: 20),

              // List of smaller news items
              NewsListItem(
                title: 'Istilah-istilah Khas yang Hanya Dipahami Oleh Arek Malang',
                date: 'By Ongis Mbois • 10 Oktober 2024',
              ),
              NewsListItem(
                title: 'Watu Tumpuk, Situs Kuno Bendungan Sutami',
                date: 'By Ongis Mbois • 7 Oktober 2024',
              ),
              NewsListItem(
                title: 'Frikadeller vs Perkedel, Kuliner Warisan Belanda?',
                date: 'By Ongis Mbois • 8 Oktober 2024',
              ),
              NewsListItem(
                title: 'Pemain yang Tak Tergantikan di Starting XI Arema di 7 Laga Liga 1 2024-2025',
                time: 'By Ongis Mbois • 2 jam yang lalu',
              ),
              NewsListItem(
                title: 'Arema Menjalani 4 Laga Tandang Beruntun, Waktunya Aremania Menabung',
                date: 'By Ongis Mbois • 9 Oktober 2024',
              ),
              NewsListItem(
                title: 'Ekspektasi Aremania untuk Arema di Mata Pablo Oliveira',
                date: 'By Ongis Mbois • 8 Oktober 2024',
              ),
              NewsListItem(
                title: 'Pelatih Arema Blak-blakan Tentang Peluang Timnas Indonesia di Kandang Bahrain',
                date: 'By Ongis Mbois • 8 Oktober 2024',
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
    );
  }
}

// Widget CategoryButton untuk navigasi kategori
class CategoryButton extends StatelessWidget {
  final String title;
  final bool selected;

  const CategoryButton({
    required this.title,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? Colors.blue : Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: selected ? Colors.white : Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

// Widget MainNewsCard untuk berita utama
class MainNewsCard extends StatelessWidget {
  final String title;
  final String time;

  const MainNewsCard({
    required this.title,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network('https://via.placeholder.com/400x200'), // Gambar placeholder
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(time),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Widget NewsListItem untuk berita di bawahnya
class NewsListItem extends StatefulWidget {
  final String title;
  final String? date;
  final String? time;

  const NewsListItem({
    required this.title,
    this.date,
    this.time,
  });

  @override
  _NewsListItemState createState() => _NewsListItemState();
}

class _NewsListItemState extends State<NewsListItem> {
  bool _isBookmarked = false; // Status bookmark

  void _toggleBookmark() {
    setState(() {
      _isBookmarked = !_isBookmarked; // Toggle bookmark status
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network('https://via.placeholder.com/100x100'), // Gambar placeholder
      title: Text(widget.title),
      subtitle: Text(widget.date ?? widget.time ?? ''),
      trailing: IconButton(
        icon: Icon(_isBookmarked ? Icons.bookmark : Icons.bookmark_border),
        onPressed: _toggleBookmark, // Mengubah status ketika ditekan
      ),
    );
  }
}
