import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
      theme: ThemeData(fontFamily: 'Roboto'),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool pushNotifications = true; // Status push notification
  bool promotionalNotifications = false; // Status promotional notification
  int _selectedIndex = 0; // Status untuk BottomNavigationBar

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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.person, color: Colors.black),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey.shade300,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            SizedBox(height: 16),
            Text(
              "Emmie Watson",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "emmie1709@gmail.com",
              style: TextStyle(color: Colors.grey),
            ),

            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Akun Saya",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 30),
            buildMenuItem(
              context,
              Icons.person_outline,
              "Informasi Pribadi",
              () {},
            ),
            buildMenuItem(
              context,
              Icons.lock_outline,
              "Kebijakan Privasi",
              () {},
            ),
            buildMenuItem(
              context,
              Icons.settings_outlined,
              "Pengaturan",
              () {},
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Notifikasi",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            buildSwitchItem(
              "Push Notifications",
              pushNotifications,
              (bool value) {
                setState(() {
                  pushNotifications = value;
                });
              },
            ),
            buildSwitchItem(
              "Promotional Notifications",
              promotionalNotifications,
              (bool value) {
                setState(() {
                  promotionalNotifications = value;
                });
              },
            ),
            SizedBox(height: 30),
            buildMenuItem(
              context,
              Icons.help_outline,
              "Help Center",
              () {},
            ),
            buildMenuItem(
              context,
              Icons.logout,
              "Keluar",
              () {},
              color: Colors.red,
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
    );
  }

  Widget buildMenuItem(BuildContext context, IconData icon, String title, VoidCallback onClicked, {Color color = Colors.black}) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title),
      onTap: onClicked,
    );
  }

  Widget buildSwitchItem(String title, bool value, ValueChanged<bool> onChanged) {
    return SwitchListTile(
      title: Text(title),
      value: value,
      onChanged: onChanged,
    );
  }
}
