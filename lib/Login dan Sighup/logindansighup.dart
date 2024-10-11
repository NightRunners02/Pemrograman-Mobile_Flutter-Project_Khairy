import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://example.com/logo.png', // Ganti dengan URL logo Anda
                    height: 60,
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Masuk',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 20),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Daftar',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text('Atau', style: TextStyle(color: Colors.grey, fontSize: 16)),
                  SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Image.network(
                      'https://example.com/google_icon.png', // Ganti dengan URL icon Google Anda
                      height: 24,
                    ),
                    label: Text(
                      'Menggunakan Google',
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Belum memiliki akun?', style: TextStyle(fontSize: 16)),
                      TextButton(
                        onPressed: () {},
                        child: Text('Daftar', style: TextStyle(fontSize: 16, color: Colors.blue)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
