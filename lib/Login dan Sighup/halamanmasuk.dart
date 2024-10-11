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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {},
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'Masuk',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 40),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (bool? value) {},
                        ),
                        Text('Remember me'),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Forgot password?'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
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
                ),
                SizedBox(height: 20),
                Center(
                  child: Text('Atau', style: TextStyle(color: Colors.grey, fontSize: 16)),
                ),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton.icon(
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
                ),
                Spacer(),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Belum memiliki akun?', style: TextStyle(fontSize: 16)),
                      TextButton(
                        onPressed: () {},
                        child: Text('Daftar', style: TextStyle(fontSize: 16, color: Colors.blue)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
