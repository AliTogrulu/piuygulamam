/*import 'package:flutter/material.dart';
import 'package:piuygulamam/menuler/menu1.dart';
import 'package:piuygulamam/menuler/menu2.dart';
import 'package:piuygulamam/menuler/menu3.dart';
import 'package:piuygulamam/menuler/menu4.dart';
import 'package:piuygulamam/menuler/menu5.dart';
import 'package:piuygulamam/menuler/menu6.dart';
import 'package:piuygulamam/menuler/mnu7.dart';



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/Kayitol": (context) => const Kayitol(),
        "/Ayarlar": (context) => const Ayarlar(),
        "/kaziKazan": (context) => const kaziKazan(),
        "/paylas": (context) => const Paylas(),
        '/Profil': (context) => const Profil(),
        "/Diller": (context) => const Diller(),
      },
      home: Anasayfa(),
    );
  }*/
/*import 'package:flutter/material.dart';
import 'package:piuygulamam/menuler/menu1.dart';
import 'package:piuygulamam/menuler/menu2.dart';
import 'package:piuygulamam/menuler/menu3.dart';
import 'package:piuygulamam/menuler/menu4.dart';
import 'package:piuygulamam/menuler/menu5.dart';
import 'package:piuygulamam/menuler/menu6.dart';
import 'package:piuygulamam/menuler/mnu7.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
void main() {
  // sqflite_common_ffi paketini kullanıyorsanız, databaseFactory'yi initialize edin.
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;

  runApp(const Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
            "/Kayitol": (context) => const Kayitol(),
        "/Ayarlar": (context) => const Ayarlar(),
        "/kaziKazan": (context) => const kaziKazan(),
        "/paylas": (context) => const Paylas(),
        '/Profil': (context) => const Profil(),
        "/Diller": (context) => const Diller(),
    
      },
      home: const Anasayfa(),
    );
  }
}


*/
/*import 'package:flutter/material.dart';
import 'package:piuygulamam/menuler/menu1.dart';
import 'package:piuygulamam/menuler/menu2.dart';
import 'package:piuygulamam/menuler/menu3.dart';
import 'package:piuygulamam/menuler/menu4.dart';
import 'package:piuygulamam/menuler/menu5.dart';
import 'package:piuygulamam/menuler/menu6.dart';
import 'package:piuygulamam/menuler/mnu7.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  sqfliteFfiInit(); // SQFlite FFI Web initialize ediliyor
  databaseFactory = databaseFactoryFfi; // SQFlite FFI Web kullanılacak şekilde ayarlanıyor

  runApp(const Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/Kayitol": (context) => const Kayitol(),
        "/Ayarlar": (context) => const Ayarlar(),
        "/kaziKazan": (context) => const kaziKazan(),
        "/paylas": (context) => const Paylas(),
        '/Profil': (context) => const Profil(),
        "/Diller": (context) => const Diller(),
      },
      home: const Anasayfa(),
    );
  }
}*/
/*import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:piuygulamam/menuler/menu1.dart';
import 'package:piuygulamam/menuler/menu2.dart';
import 'package:piuygulamam/menuler/menu3.dart';
import 'package:piuygulamam/menuler/menu4.dart';
import 'package:piuygulamam/menuler/menu5.dart';
import 'package:piuygulamam/menuler/menu6.dart';
import 'package:piuygulamam/menuler/mnu7.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

void main() {
  if (kIsWeb) {
    // Web platformu için sqflite_common_ffi_web kullanımı
    databaseFactory = databaseFactoryFfiWeb;
  } else {
    // Diğer platformlar için sqflite_common_ffi kullanımı
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  }

  runApp(const Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/Kayitol": (context) => const Kayitol(),
        "/Ayarlar": (context) => const Ayarlar(),
        "/kaziKazan": (context) => const kaziKazan(),
        "/paylas": (context) => const Paylas(),
        '/Profil': (context) => const Profil(),
        "/Diller": (context) => const Diller(),
      },
      home: const Anasayfa(),
    );
  }
}*/
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:piuygulamam/menuler/menu2.dart';
import 'package:piuygulamam/menuler/menu3.dart';
import 'package:piuygulamam/menuler/menu4.dart';
import 'package:piuygulamam/menuler/menu5.dart';
import 'package:piuygulamam/menuler/menu6.dart';
import 'package:piuygulamam/menuler/mnu7.dart';

import 'package:piuygulamam/grsyap.dart';

import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

void main() {
  if (kIsWeb) {
    // Web platformu için sqflite_common_ffi_web kullanımı
    databaseFactory = databaseFactoryFfiWeb;
  } else {
    // Diğer platformlar için sqflite_common_ffi kullanımı
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  }

  runApp(const Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/Kayitol': (context) => const Kayitol(),
        '/Ayarlar': (context) => const Ayarlar(),
        '/kaziKazan': (context) => const kaziKazan(),
        '/paylas': (context) => const Paylas(),
        '/Profil': (context) => const Profil(),
        '/Diller': (context) => const Diller(),
        '/grsyap': (context) => const GrsYap(),
        
      },
      home: const Anasayfa(),
    );
  }
}

class Anasayfa extends StatelessWidget {
  const Anasayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Kayitol');
              },
              child: const Text('Kayıt Ol'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/grsyap');
              },
              child: const Text('Giriş Yap'),
            ),
           
          ],
        ),
      ),
    );
  }
}
