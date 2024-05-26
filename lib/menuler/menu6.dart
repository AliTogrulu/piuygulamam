import 'package:flutter/material.dart';

void main() {
  runApp(const Profil());
}

class Profil extends StatefulWidget {
  const Profil({super.key});
  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      
        appBar: AppBar(
          title:const Text('Profil'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundImage:
                   NetworkImage('https://via.placeholder.com/150'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Kullanıcı Adı',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Kullanıcı Biyografisi burada yer alabilir.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.email),
                    onPressed: () {
                      // E-posta işlemleri
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.phone),
                    onPressed: () {
                      // Telefon işlemleri
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.web),
                    onPressed: () {
                      // Web sitesi işlemleri
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      
    );
  }
}

/*
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  late String _profilFotoUrl; // Profil fotoğrafı URL'si

  @override
  void initState() {
    super.initState();
    // Profil fotoğrafını varsayılan olarak ayarla
    _profilFotoUrl = 'https://example.com/default_profile.jpg';
    // initState içinde async işlemleri kullanamayız
    // Bu yüzden getLostData fonksiyonunu initState dışına taşıyoruz
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getLostData();
    });
  }

  Future<void> _fotoDegistir() async {
    final picker = ImagePicker();
    final pickedFile = await picker. pickImage(
      source: ImageSource.gallery,
    ); // Galeriden fotoğraf seç

    if (pickedFile != null) {
      setState(() {
        _profilFotoUrl = pickedFile.path; // Seçilen fotoğrafı profil fotoğrafı olarak ayarla
      });
    }
  }

  Future<void> getLostData() async {
    final ImagePicker picker = ImagePicker();
    final LostDataResponse response = await picker.retrieveLostData();
    if (response.isEmpty) {
      return;
    }
    final List<XFile>? files = response.files;
    if (files != null) {
      _handleLostFiles(files);
    } else {
      _handleError(response.exception);
    }
  }

  void _handleLostFiles(List<XFile> files) {
    // Kaybolan dosyaları işleme al
    // Bu kısımda kaybolan dosyaların işlemlerini yapabilirsiniz
  }

  void _handleError(Exception? exception) {
    // Hata durumunu işleme al
    // Bu kısımda hata durumunu işleyebilirsiniz
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                _fotoDegistir(); // Profil fotoğrafını değiştirmek için galeriyi aç
              },
              child: CircleAvatar(
                radius: 70,
                backgroundImage:
                    AssetImage(_profilFotoUrl), // Profil fotoğrafını göster
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Kullanıcı Adı: John Doe',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'E-posta: john.doe@example.com',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Geri Dön"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/