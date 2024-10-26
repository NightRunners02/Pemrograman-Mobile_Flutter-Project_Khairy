import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Terms and Conditions',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, // Menghilangkan debug banner
      home: TermsAndConditionsScreen(),
    );
  }
}

class TermsAndConditionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Ikon panah kembali
          onPressed: () {
            Navigator.pop(context); // Kembali ke layar sebelumnya
          },
        ),
        title: Text("Kebijakan Privasi Wearemania"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ExpansionTile(
            title: Text("1. Penerimaan Syarat"),
            children: [
              ListTile(
                title: HtmlWidget(
                  """<p style="text-align: justify;">
                    Dengan mengakses atau menggunakan aplikasi Wearemania, Anda setuju untuk terikat oleh syarat dan ketentuan ini, semua hukum, dan peraturan yang berlaku, dan Anda bertanggung jawab untuk mematuhi hukum setempat yang berlaku. Jika Anda tidak setuju dengan syarat ini, Anda dilarang menggunakan atau mengakses aplikasi ini.
                  </p>""",
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("2. Penggunaan Layanan"),
            children: [
              ListTile(
                title: HtmlWidget(
                  """<p style="text-align: justify;">
                    Aplikasi ini hanya boleh digunakan untuk tujuan pribadi dan non-komersial. Anda setuju untuk tidak menggunakan aplikasi ini untuk tujuan yang melanggar hukum atau yang dilarang oleh syarat dan ketentuan ini. Pengguna tidak diizinkan untuk mengubah, menyalin, mendistribusikan, atau memodifikasi konten aplikasi ini tanpa izin tertulis dari Wearemania.
                  </p>""",
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("3. Hak Kekayaan Intelektual"),
            children: [
              ListTile(
                title: HtmlWidget(
                  """<p style="text-align: justify;">
                    Semua konten dalam aplikasi Wearemania, termasuk teks, gambar, logo, dan lainnya, dilindungi oleh hak cipta dan hak kekayaan intelektual lainnya. Anda tidak diperbolehkan untuk menggunakan, memodifikasi, atau mendistribusikan konten tersebut tanpa izin resmi dari pemiliknya.
                  </p>""",
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("4. Privasi Pengguna"),
            children: [
              ListTile(
                title: HtmlWidget(
                  """<p style="text-align: justify;">
                    Privasi pengguna sangat penting bagi kami. Kami berkomitmen untuk melindungi informasi pribadi Anda sesuai dengan kebijakan privasi yang berlaku. Dengan menggunakan aplikasi ini, Anda menyetujui pengumpulan dan penggunaan informasi sesuai dengan kebijakan privasi kami.
                  </p>""",
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("5. Penafian Garansi"),
            children: [
              ListTile(
                title: HtmlWidget(
                  """<p style="text-align: justify;">
                    Aplikasi ini disediakan "sebagaimana adanya" dan Wearemania tidak memberikan jaminan atau garansi apapun terkait keakuratan, keandalan, atau keberlanjutan layanan. Kami tidak menjamin bahwa aplikasi ini bebas dari kesalahan atau akan selalu tersedia.
                  </p>""",
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("6. Batasan Tanggung Jawab"),
            children: [
              ListTile(
                title: HtmlWidget(
                  """<p style="text-align: justify;">
                    Dalam keadaan apapun, Wearemania atau afiliasinya tidak bertanggung jawab atas kerugian atau kerusakan yang timbul dari penggunaan aplikasi ini. Pengguna bertanggung jawab sepenuhnya atas penggunaan aplikasi ini dan resiko yang mungkin terjadi.
                  </p>""",
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("7. Perubahan Syarat dan Ketentuan"),
            children: [
              ListTile(
                title: HtmlWidget(
                  """<p style="text-align: justify;">
                    Wearemania berhak untuk mengubah atau memperbarui syarat dan ketentuan ini kapan saja. Perubahan akan diberlakukan segera setelah dipublikasikan di aplikasi. Anda disarankan untuk secara berkala memeriksa syarat dan ketentuan untuk mengetahui pembaruan terbaru.
                  </p>""",
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("8. Hukum yang Berlaku"),
            children: [
              ListTile(
                title: HtmlWidget(
                  """<p style="text-align: justify;">
                    Syarat dan ketentuan ini diatur oleh dan ditafsirkan sesuai dengan hukum yang berlaku di Indonesia. Jika ada sengketa yang timbul dari penggunaan aplikasi ini, sengketa tersebut akan diselesaikan di pengadilan yang berwenang di Indonesia.
                  </p>""",
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("9. Kontak Kami"),
            children: [
              ListTile(
                title: HtmlWidget(
                  """<p style="text-align: justify;">
                    Jika Anda memiliki pertanyaan atau kekhawatiran terkait syarat dan ketentuan ini, silakan hubungi kami di support@wearemania.com.
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
