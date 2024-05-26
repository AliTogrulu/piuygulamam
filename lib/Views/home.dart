import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
/*import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            drawer: Drawer(
              child: ListView(
                children: [
                  mydow(Icons.person_add, "Kayıt ol", "/Kayitol"),
                  mydow(Icons.settings, "Ayarlar", "/Ayarlar"),
                  mydow(Icons.palette, "Kazı Kazan", "/kaziKazan"),
                  mydow(Icons.share, "Paylaş", "/paylas"),
                  mydow(Icons.person, "Profil", "/Profil"),
                  mydow(Icons.language, "Dil Ayarları", "/Diller")
                ],
              ),
            ),
            appBar: AppBar(
              title: const Text("  Pi Network"),
              centerTitle: false,
              backgroundColor: Colors.deepOrange,
              actions: [
                IconButton(
                  onPressed: () {
                    Share.share(
                        """ Pi Networku İndirerek Sizde Kazanmaya Başlayın?
        Android: https://play.google.com/store/apps/details?id=com.binance.dev
        İOS: https://apps.apple.com/us/app/pi-network/id1446597353""",
                        subject: "Pi Network",
                        sharePositionOrigin: const Rect.fromLTWH(0, 0, 0,
                            0)); //paylasım anımasyonunu nerde paslıcagını ayarlıyoruz
                  },
                  tooltip: "Paylaş",
                  icon: const Icon(Icons.share),
                ),
              ],
            ),
            body: Text("data")),
      ),
    );
  }

  mydow(
    IconData icon,
    String title,
    String routName,
  ) =>
      ListTile(
        leading: Icon(icon),
        title: Text(title),
        onTap: () => Navigator.pushNamed(context, routName),
      );
}
*/
/*
import 'package:flutter/material.dart';
import 'package:piuygulamam/prov%C4%B1der/provider.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const  Anasayfa());
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => UiProvider()..init(),
      child:
          Consumer<UiProvider>(builder: (context, UiProvider notifier, child) {
    
        return MaterialApp(
          debugShowCheckedModeBanner: false, 
          //by default  theme settings ,you can also set  seystem 
          //when your mobile  theme is dark  the app also  become dart
          themeMode: notifier.isDark? ThemeMode.dark:ThemeMode.light,
          // our costum theme applied
          darkTheme: notifier.idDark? notifier.darkTheme:notifier.lightTheme,

          theme: ThemeData(),
          home: SafeArea(
            child: Scaffold(
                drawer: Drawer(
                  child: ListView(
                    children: [
                      mydow(Icons.person_add, "Kayıt ol", "/Kayitol"),
                      mydow(Icons.settings, "Ayarlar", "/Ayarlar"),
                      mydow(Icons.palette, "Kazı Kazan", "/kaziKazan"),
                      mydow(Icons.share, "Paylaş", "/paylas"),
                      mydow(Icons.person, "Profil", "/Profil"),
                      mydow(Icons.language, "Dil Ayarları", "/Diller")
                    ],
                  ),
                ),
                appBar: AppBar(
                  title: const Text("  Pi Network"),
                  centerTitle: false,
                  backgroundColor: Colors.deepOrange,
                  actions: [
                    IconButton(
                      onPressed: () {
                        Share.share(
                            """ Pi Networku İndirerek Sizde Kazanmaya Başlayın?
              Android: https://play.google.com/store/apps/details?id=com.binance.dev
              İOS: https://apps.apple.com/us/app/pi-network/id1446597353""",
                            subject: "Pi Network",
                            sharePositionOrigin: const Rect.fromLTWH(0, 0, 0,
                                0)); //paylasım anımasyonunu nerde paslıcagını ayarlıyoruz
                      },
                      tooltip: "Paylaş",
                      icon: const Icon(Icons.share),
                    ),
                  ],
                ),
                body:Text("uh")
          ),
         ), );
      }),
    );
  }

  mydow(
    IconData icon,
    String title,
    String routName,
  ) =>
      ListTile(
        leading: Icon(icon),
        title: Text(title),
        onTap: () => Navigator.pushNamed(context, routName),
      );
}*/
//hatalı  kodlamam ana sayfa
/*import 'package:flutter/material.dart';
import 'package:piuygulamam/prov%C4%B1der/provider.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Anasayfa());
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => UiProvider()..init(),
      child: Consumer<UiProvider>(
        builder: (context, UiProvider notifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: notifier.isDark ? ThemeMode.dark : ThemeMode.light,
            darkTheme: notifier.darkTheme,
            theme: notifier.lightTheme,
            home: SafeArea(
              child: Scaffold(
                drawer: Drawer(
                  child: ListView(
                    children: [
                      mydow(Icons.person_add, "Kayıt ol", "/Kayitol"),
                      mydow(Icons.settings, "Ayarlar", "/Ayarlar"),
                      mydow(Icons.palette, "Kazı Kazan", "/kaziKazan"),
                      mydow(Icons.share, "Paylaş", "/paylas"),
                      mydow(Icons.person, "Profil", "/Profil"),
                      mydow(Icons.language, "Dil Ayarları", "/Diller"),
                    ],
                  ),
                ),
                appBar: AppBar(
                  title: const Text("  Pi Network"),
                  centerTitle: false,
                  backgroundColor: Colors.deepOrange,
                  actions: [
                    IconButton(
                      onPressed: () {
                        Share.share(
                          """ Pi Networku İndirerek Sizde Kazanmaya Başlayın?
                          Android: https://play.google.com/store/apps/details?id=com.binance.dev
                          İOS: https://apps.apple.com/us/app/pi-network/id1446597353""",
                          subject: "Pi Network",
                          sharePositionOrigin: const Rect.fromLTWH(0, 0, 0, 0),
                        );
                      },
                      tooltip: "Paylaş",
                      icon: const Icon(Icons.share),
                    ),
                  ],
                ),
                body: const Text("uh"),
              ),
            ),
          );
        },
      ),
    );
  }

  mydow(
    IconData icon,
    String title,
    String routName,
  ) =>
      ListTile(
        leading: Icon(icon),
        title: Text(title),
        onTap: () => Navigator.pushNamed(context, routName),
      );
}*/
//hata kodlama ayarlar sayfası koyu mode
/*import 'package:flutter/material.dart';
import 'package:piuygulamam/prov%C4%B1der/provider.dart';
import 'package:provider/provider.dart';

class Ayarlar extends StatelessWidget {
  const Ayarlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text("Ayarlar"),
      ),
      body: Consumer<UiProvider>(  
      builder:(context,UiProvider notifier ,child) {
          
          return Column(
            children: [
              ListTile(
                leading:const Icon(Icons.dark_mode),
                title: const Text("Koyu Mode"),
                trailing: Switch(
                  value:notifier.isDark , onChanged: (value)=>notifier.changeTheme()
                  
                ),
              )
            ],
          );
        }
      ),
    );
    
  }
}*/
//hatalı kodlama provider
/*import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UiProvider  extendes  ChangeNotifier{

bool  _isDark =false;
bool  get isDark => _isDar

late  SharedPreferences storage;

// custom   dart theme 
final darkTheme = ThemeData( 
primaryColor: Colors.black12,
brightness: Brightness.dark,
primaryColorDark: Colors.black12,
);
// custom   light theme
final ligtTheme =ThemeData(
primaryColor: Colors.white,
brightness: Brightness.light,
primaryColorLight:Colors.white 
);

//now we want to save the last changed theme value 


//dark mod toggle actions
changeTheme(){
_isDark=!_isDark;
// Save the value  to secure storage
storage.setBool("isDark",_isDark);
  notifyListeners ();
}
//init method of provider
init()async{


//after  we re run the app
  storge=await SharedPreferences.getInstance();
_isDark =storge.getBool("isDark")??false;
  notifyListeners ();
};
}*/
//kayıt ol
/*import 'package:flutter/material.dart';
import 'package:piuygulamam/database/database_helper.dart';
import 'package:piuygulamam/grsyap.dart';
import 'package:piuygulamam/menuler/menu1.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Kayitol extends StatefulWidget {
  const Kayitol({super.key});

  @override
  State<Kayitol> createState() => _KayitolState();
}

class _KayitolState extends State<Kayitol> {
  final _formKey = GlobalKey<FormState>();
  String ad = "";
  String soyad = "";
  String email = "";
  String kimlikNumarasi = "";
  String sifre = "";
  bool kayitolundumu = false;

  final dbHelper = DatabaseHelper.instance;

  void Kayitol() {
    if (_formKey.currentState!.validate()) {
 // TC kimlik numarası ve e-posta adresinin mevcut olup olmadığını kontrol et
      List<Map<String, dynamic>> userByTC = await dbHelper.queryUserByTC(kimlikNumarasi);
      List<Map<String, dynamic>> userByEmail = await dbHelper.queryUserByEmail(email);

 if (userByTC.isNotEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Bu TC kimlik numarası ile zaten bir hesap oluşturulmuş.')),
        );
      }

  else if (userByEmail.isNotEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Bu e-posta adresi ile zaten bir hesap oluşturulmuş.')),
        );
      } 

else{ 
  // Yeni kullanıcıyı veritabanına ekle,
  Map<String,dynamic>row{ 
    'tc _number':kimliknumarasi,
    'email':email,
    'firt_name':ad,
    'last_nane':soyad,
    'password':sifre
  };
  await dbHalper.insertUser(row);

    setState(() {
        kayitolundumu = true;
      });
          ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Kayıt işlemi başarıyla tamamlandı!')),
        );
          // Kayıt başarılı olduğunda başka bir sayfaya yönlendirme yapabilirsiniz
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Anasayfa()),
        );
    }
  }

}
}
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            "Kayit ol",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
          )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
           
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) => Anasayfa()));
                    },
                    icon: Icon(Icons.arrow_back_ios_new)),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Ad'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lütfen adınızı girin';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      ad = value;
                    });
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Soyad"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Lütfen Soyadınızı gırınız";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      soyad = value;
                    });
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: "email"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Lütfen email'nizi Giriniz";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                ),
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: "Kimlik Numaransı"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Lütfen Kimlik numaranızı gırırnız ";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      kimlikNumarasi = value;
                    });
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Sifre"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Lütfen Sifrenizi  gırınız";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      sifre = value;
                    });
                  },
                ),
                const SizedBox(height: 16.0),
                Center(
                  child: ElevatedButton(
                    onPressed: kayitolundumu ? null : Kayitol,
                    child: Text(
                      'Kayıt Ol',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                  ),
                ),
                if (kayitolundumu)
                  const Text(
                    'Kayıt işlemi başarıyla tamamlandı!',
                    style: TextStyle(color: Color.fromARGB(255, 13, 1, 4)),
                  ),
                const SizedBox(
                  height: 12,
                ),
                const SizedBox(
                  height: 12,
                ),
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Girisyap()));
                      },
                      child: const Text("Giriş yap")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}*/
//data base dosyası kayıt ol verı tabanlı
/*/*import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  // Singleton yapısı
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  // Veritabanı getter'ı
  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('app_database.db');
    return _database!;
  }

  // Veritabanı başlatma
  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  // Tablo oluşturma
  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const emailType = 'TEXT NOT NULL UNIQUE';
    const tcType = 'TEXT NOT NULL UNIQUE';

    await db.execute('''
CREATE TABLE users (
  id $idType,
  tc_number $tcType,
  email $emailType,
  first_name $textType,
  last_name $textType,
  password $textType
  )
''');
  }

  // Kullanıcı ekleme
  Future<void> insertUser(Map<String, dynamic> row) async {
    final db = await instance.database;

    await db.insert(
      'users',
      row,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Kimlik numarasına göre kullanıcı sorgulama
  Future<List<Map<String, dynamic>>> queryUserByTC(String tcNumber) async {
    final db = await instance.database;

    return await db.query(
      'users',
      where: 'tc_number = ?',
      whereArgs: [tcNumber],
    );
  }

  // E-posta adresine göre kullanıcı sorgulama
  Future<List<Map<String, dynamic>>> queryUserByEmail(String email) async {
    final db = await instance.database;

    return await db.query(
      'users',
      where: 'email = ?',
      whereArgs: [email],
    );
  }

  // Veri güncelleme
  Future<int> updateUser(Map<String, dynamic> row) async {
    final db = await instance.database;

    int id = row['id'];
    return await db.update(
      'users',
      row,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Veri silme
  Future<int> deleteUser(int id) async {
    final db = await instance.database;

    return await db.delete(
      'users',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}*/ */
/*<!DOCTYPE html>
<html>
<head>
  <!--
    If you are serving your web app in a path other than the root, change the
    href value below to reflect the base path you are serving from.

    The path provided below has to start and end with a slash "/" in order for
    it to work correctly.

    For more details:
    * https://developer.mozilla.org/en-US/docs/Web/HTML/Element/base

    This is a placeholder for base href that will be replaced by the value of
    the `--base-href` argument provided to `flutter build`.
  -->
  <base href="$FLUTTER_BASE_HREF">

  <meta charset="UTF-8">
  <meta content="IE=Edge" http-equiv="X-UA-Compatible">
  <meta name="description" content="A new Flutter project.">

  <!-- iOS meta tags & icons -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-title" content="piuygulamam">
  <link rel="apple-touch-icon" href="icons/Icon-192.png">

  <!-- Favicon -->
  <link rel="icon" type="image/png" href="favicon.png"/>

  <title>piuygulamam</title>
  <link rel="manifest" href="manifest.json">

  <script>
    // The value below is injected by flutter build, do not touch.
    const serviceWorkerVersion = null;
  </script>
  <!-- This script adds the flutter initialization JS code -->
  <script src="flutter.js" defer></script>
</head>
<body>
  <script>
    window.addEventListener('load', function(ev) {
      // Download main.dart.js
      _flutter.loader.loadEntrypoint({
        serviceWorker: {
          serviceWorkerVersion: serviceWorkerVersion,
        },
        onEntrypointLoaded: function(engineInitializer) {
          engineInitializer.initializeEngine().then(function(appRunner) {
            appRunner.runApp();
          });
        }
      });
    });
  </script>
</body>
</html> */