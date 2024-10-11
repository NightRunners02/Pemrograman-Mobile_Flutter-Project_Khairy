import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MatchDetailScreen(),
      theme: ThemeData(fontFamily: 'Roboto'),
    );
  }
}

class MatchDetailScreen extends StatefulWidget {
  @override
  _MatchDetailScreenState createState() => _MatchDetailScreenState();
}

class _MatchDetailScreenState extends State<MatchDetailScreen> {
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          "Arema FC VS Persija Jakarta",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          // Gambar dan info pertandingan
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/team_photo.jpg', // Sesuaikan dengan path gambar tim
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 16),
                Text(
                  "Arema FC VS Persija Jakarta",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "19.00 WIB  •  10 Oktober 2024",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "1 jam 30 menit",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  "Stadion Glora Bung Karno",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 16),
                Text(
                  "Jangan Lewatkan laga bergengsi antara Arema FC dan Persija Jakarta dalam lanjutan BRI Liga 1! Segera beli tiket Anda untuk merasakan atmosfer luar biasa di stadion.",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          // Daftar pemain
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // Jumlah kolom pemain
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.7,
              ),
              itemCount: 12, // Jumlah pemain
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey.shade300,
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Sam",
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      "Worthington",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 16),
          // Tombol "Beli Tiket"
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: Colors.blueAccent,
                ),
                child: Text(
                  "BELI TIKET",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                icon: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Icon(Icons.home),
                  ],
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Icon(Icons.explore),
                  ],
                ),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Icon(Icons.bookmark),
                  ],
                ),
                label: 'Bookmark',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Icon(Icons.confirmation_number), // Ikon tiket
                  ],
                ),
                label: 'Ticket',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
