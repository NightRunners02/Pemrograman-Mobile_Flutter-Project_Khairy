import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Report Issue Screen',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false, // Menyembunyikan debug banner
      home: ReportIssueScreen(),
    );
  }
}

class ReportIssueScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text('Laporkan masalah'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Kirim',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jelaskan secara singkat apa yang terjadi atau apa yang tidak berfungsi.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Masukkan deskripsi masalah...',
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.image),
                      iconSize: 48,
                      onPressed: () {},
                    ),
                    Text('Unggah', style: TextStyle(fontSize: 14.0)),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.camera_alt),
                      iconSize: 48,
                      onPressed: () {},
                    ),
                    Text('Cuplikan Layar', style: TextStyle(fontSize: 14.0)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
