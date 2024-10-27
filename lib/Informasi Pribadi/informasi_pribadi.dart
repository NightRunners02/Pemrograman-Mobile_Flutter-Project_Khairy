import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EditProfileScreen(),
    );
  }
}

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.orange,
            colorScheme: ColorScheme.light(primary: Colors.orange),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child ?? SizedBox.shrink(),
        );
      },
    );

    if (pickedDate != null) {
      setState(() {
        _dobController.text = "${pickedDate.day}-${pickedDate.month}-${pickedDate.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Tambahkan fungsi back
          },
        ),
        title: Text('Ubah Profil', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(Icons.check, color: Colors.white),
            onPressed: () {
              // Tambahkan fungsi simpan
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.orange,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      'https://example.com/path_to_profile_image.jpg', // Ganti dengan URL gambar profil Anda
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Ubah',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                _buildTextField('Nama', _nameController),
                _buildTextField('Jenis Kelamin', _genderController),
                _buildDateField('Tanggal Lahir', _dobController),
                _buildTextField('No. Handphone', _phoneController),
                _buildTextField('Email', _emailController),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    print('Edit Profile tapped');
                  },
                  child: Text('Edit Profile'),
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String title, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 16)),
        SizedBox(height: 8),
        TextField(
          controller: controller,
          enabled: false, // Membuat field tidak bisa ditekan
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Masukkan $title',
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildDateField(String title, TextEditingController controller) {
    return GestureDetector(
      onTap: () {
        // Nonaktifkan GestureDetector agar tidak bisa ditekan
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 16)),
          SizedBox(height: 8),
          TextField(
            controller: controller,
            readOnly: true,
            enabled: false, // Membuat field tidak bisa ditekan
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Pilih $title',
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
