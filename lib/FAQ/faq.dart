import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FAQ Wearemania',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, // Menghilangkan debug banner
      home: FAQScreen(),
    );
  }
}

class FAQScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("FAQ Wearemania"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ExpansionTile(
            title: Text("1. Apa itu Wearemania?"),
            children: [
              ListTile(
                title: HtmlWidget(
                  """<p style="text-align: justify;">
                    Wearemania adalah aplikasi dan situs yang menyediakan informasi seputar Arema FC, termasuk berita terkini, jadwal pertandingan, skor, klasemen, serta berbagai informasi menarik lainnya untuk para penggemar Arema di seluruh dunia.
                  </p>""",
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("2. Bagaimana cara membuat akun di Wearemania?"),
            children: [
              ListTile(
                title: HtmlWidget(
                  """<p style="text-align: justify;">
                    Untuk membuat akun, cukup buka aplikasi Wearemania, pilih opsi "Daftar" atau "Sign Up" pada halaman login, lalu isi informasi yang diminta seperti nama, alamat email, dan kata sandi. Setelah selesai, verifikasi akun melalui email yang dikirimkan.
                  </p>""",
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("3. Apakah Wearemania menyediakan berita terbaru tentang Arema FC?"),
            children: [
              ListTile(
                title: HtmlWidget(
                  """<p style="text-align: justify;">
                    Ya, Wearemania berkomitmen untuk menyajikan berita terbaru seputar Arema FC, termasuk update hasil pertandingan, wawancara pemain dan pelatih, serta liputan dari berbagai acara yang berhubungan dengan klub dan suporternya.
                  </p>""",
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("4. Bagaimana cara berlangganan berita atau notifikasi dari Wearemania?"),
            children: [
              ListTile(
                title: HtmlWidget(
                  """<p style="text-align: justify;">
                    Pengguna dapat mengaktifkan notifikasi dari pengaturan aplikasi Wearemania. Cukup buka Pengaturan > Notifikasi, dan pilih jenis notifikasi yang ingin diterima, seperti berita terbaru, skor pertandingan, atau informasi lain terkait Arema FC.
                  </p>""",
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("5. Bagaimana cara melaporkan masalah teknis atau bug di aplikasi?"),
            children: [
              ListTile(
                title: HtmlWidget(
                  """<p style="text-align: justify;">
                    Jika Anda menemukan masalah teknis atau bug di aplikasi, Anda bisa melaporkannya dengan membuka menu "Laporkan Masalah" di aplikasi. Sertakan deskripsi masalah serta tangkapan layar jika memungkinkan, agar tim kami dapat segera melakukan perbaikan.
                  </p>""",
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("6. Apakah data pribadi saya aman di Wearemania?"),
            children: [
              ListTile(
                title: HtmlWidget(
                  """<p style="text-align: justify;">
                    Wearemania sangat serius dalam menjaga keamanan data pribadi pengguna. Informasi pribadi yang Anda berikan akan disimpan secara aman dan digunakan sesuai dengan kebijakan privasi kami. Kami tidak akan membagikan data Anda kepada pihak ketiga tanpa izin.
                  </p>""",
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("7. Apakah Wearemania gratis?"),
            children: [
              ListTile(
                title: HtmlWidget(
                  """<p style="text-align: justify;">
                    Ya, aplikasi Wearemania dapat diunduh dan digunakan secara gratis. Namun, ada beberapa fitur atau konten premium yang mungkin memerlukan biaya berlangganan atau pembelian dalam aplikasi.
                  </p>""",
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("8. Bagaimana cara memberikan feedback atau saran untuk Wearemania?"),
            children: [
              ListTile(
                title: HtmlWidget(
                  """<p style="text-align: justify;">
                    Kami sangat menghargai masukan dari pengguna. Anda dapat mengirimkan feedback atau saran melalui menu "Kontak Kami" di dalam aplikasi atau mengirimkan email ke support@wearemania.com. Kami berusaha untuk meningkatkan aplikasi berdasarkan masukan Anda.
                  </p>""",
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("9. Apakah Wearemania tersedia dalam berbagai bahasa?"),
            children: [
              ListTile(
                title: HtmlWidget(
                  """<p style="text-align: justify;">
                    Saat ini, Wearemania tersedia dalam bahasa Indonesia, namun kami berencana untuk menambahkan dukungan bahasa lain di masa mendatang agar dapat diakses oleh lebih banyak penggemar Arema di seluruh dunia.
                  </p>""",
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("10. Bagaimana cara mengatur preferensi notifikasi di Wearemania?"),
            children: [
              ListTile(
                title: HtmlWidget(
                  """<p style="text-align: justify;">
                    Anda dapat mengatur preferensi notifikasi dengan membuka menu "Pengaturan" di aplikasi, lalu pilih opsi "Notifikasi". Di sana Anda dapat memilih jenis notifikasi yang ingin diaktifkan atau dinonaktifkan, seperti berita terbaru, skor pertandingan, dan lainnya.
                  </p>""",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
