// ignore_for_file: use_build_context_synchronously

/*import 'package:flutter/material.dart';
import 'package:piuygulamam/database/database_helper.dart';
import 'package:piuygulamam/grsyap.dart';
import 'package:piuygulamam/menuler/menu1.dart';
//import 'package:path/path.dart';

class Kayitol extends StatefulWidget {
  const Kayitol({super. key});

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

  Future<void> Kayitol() async {
    if (_formKey.currentState!.validate()) {
      List<Map<String, dynamic>> userByTC =
          await dbHelper.queryUserByTC(kimlikNumarasi);
      List<Map<String, dynamic>> userByEmail =
          await dbHelper.queryUserByEmail(email);

      if (userByTC.isNotEmpty) {
        ScaffoldMessenger.of(context as BuildContext).showSnackBar(
          SnackBar(
              content: Text(
                  'Bu TC kimlik numarası ile zaten bir hesap oluşturulmuş.')),
        );
      } else if (userByEmail.isNotEmpty) {
        ScaffoldMessenger.of(context as BuildContext).showSnackBar(
          SnackBar(
              content:
                  Text('Bu e-posta adresi ile zaten bir hesap oluşturulmuş.')),
        );
      } else {
        Map<String, dynamic> row = {
          'tc_number': kimlikNumarasi,
          'email': email,
          'first_name': ad,
          'last_name': soyad,
          'password': sifre
        };
        await dbHelper.insertUser(row);

        setState(() {
          kayitolundumu = true;
        });

        ScaffoldMessenger.of(context as BuildContext).showSnackBar(
          SnackBar(content: Text('Kayıt işlemi başarıyla tamamlandı!')),
        );

        Navigator.pushReplacement(
          context as BuildContext,
          MaterialPageRoute(builder: (context) => Anasayfa()),
        );
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
            ),
          ),
        ),
        body:
        ListView(
          children: [ Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => Anasayfa()));
                  },
                  icon: Icon(Icons.arrow_back_ios_new),
                ),
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
                        MaterialPageRoute(builder: (context) => Girisyap()),
                      );
                    },
                    child: const Text("Giriş yap"),
                  ),
                ),
              ],
            ),
          ),
        ),
          ]
      ),
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';
import 'package:piuygulamam/database/database_helper.dart';
import 'package:piuygulamam/grsyap.dart';
import 'package:piuygulamam/menuler/menu1.dart';

class Kayitol extends StatefulWidget {
  const Kayitol({Key? key}) : super(key: key);

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

  Future<void> kayitol() async {
    if (_formKey.currentState!.validate()) {
      print("Form validasyonu başarılı");
      
      List<Map<String, dynamic>> userByTC = await dbHelper.queryUserByTC(kimlikNumarasi);
      print("TC kimlik numarası ile kullanıcı sorgulandı: ${userByTC.isNotEmpty}");
      
      List<Map<String, dynamic>> userByEmail = await dbHelper.queryUserByEmail(email);
      print("E-posta adresi ile kullanıcı sorgulandı: ${userByEmail.isNotEmpty}");

      if (userByTC.isNotEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Bu TC kimlik numarası ile zaten bir hesap oluşturulmuş.')),
        );
      } else if (userByEmail.isNotEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Bu e-posta adresi ile zaten bir hesap oluşturulmuş.')),
        );
      } else {
        Map<String, dynamic> row = {
          'tc_number': kimlikNumarasi,
          'email': email,
          'first_name': ad,
          'last_name': soyad,
          'password': sifre
        };

        int result = await dbHelper.insertUser(row);
        print('Kullanıcı veritabanına eklendi, ID: $result');

        setState(() {
          kayitolundumu = true;
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Kayıt işlemi başarıyla tamamlandı!')),
        );

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Anasayfa()),
        );
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
              "Kayıt ol",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context, MaterialPageRoute(builder: (context) => Anasayfa()));
                      },
                      icon: Icon(Icons.arrow_back_ios_new),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Kullanıcı Adı'),
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
                      decoration: const InputDecoration(labelText: "Kullanıcı Soyadı"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Lütfen soyadınızı giriniz";
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
                      decoration: const InputDecoration(labelText: "Email"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Lütfen email'inizi giriniz";
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
                      decoration: const InputDecoration(labelText: "Kimlik Numarası"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Lütfen kimlik numaranızı giriniz";
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
                      decoration: const InputDecoration(labelText: "Şifre"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Lütfen şifrenizi giriniz";
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
                        onPressed: kayitolundumu ? null : kayitol,
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
                    const SizedBox(height: 12),
                    const SizedBox(height: 12),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>Girisyap ()),
                          );
                        },
                        child: const Text("Giriş yap"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:piuygulamam/database/database_helper.dart';
import 'package:piuygulamam/grsyap.dart';
import 'package:piuygulamam/menuler/menu1.dart';
import 'package:logger/logger.dart';

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

  final dbHelper = DatabaseHelper.instance;
  final logger = Logger();

  Future<void> kayitol() async {
    if (_formKey.currentState!.validate()) {
      logger.w("Form validasyonu başarılı");

      List<Map<String, dynamic>> userByTC =
          await dbHelper.queryUserByTC(kimlikNumarasi);
      logger.i(
          "TC kimlik numarası ile kullanıcı sorgulandı: ${userByTC.isNotEmpty}");

      List<Map<String, dynamic>> userByEmail =
          await dbHelper.queryUserByEmail(email);
   logger.i   (
          "E-posta adresi ile kullanıcı sorgulandı: ${userByEmail.isNotEmpty}");

      if (userByTC.isNotEmpty) {
     
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text(
                  'Bu TC kimlik numarası ile zaten bir hesap oluşturulmuş.')),
        );
      } else if (userByEmail.isNotEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content:
                  Text('Bu e-posta adresi ile zaten bir hesap oluşturulmuş.')),
        );
      } else {
        Map<String, dynamic> row = {
          'tc_number': kimlikNumarasi,
          'email': email,
          'first_name': ad,
          'last_name': soyad,
          'password': sifre
        };

        int result = await dbHelper.insertUser(row);
        logger.i('Kullanıcı veritabanına eklendi, ID: $result');

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Kayıt işlemi başarıyla tamamlandı!')),
        );

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>const Anasayfa()),
        );
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
              "Kayıt ol",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>const Anasayfa()));
                      },
                      icon:const Icon(Icons.arrow_back_ios_new),
                    ),
                    TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Kullanıcı Adı'),
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
                      decoration:
                          const InputDecoration(labelText: "Kullanıcı Soyadı"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Lütfen soyadınızı giriniz";
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
                      decoration: const InputDecoration(labelText: "Email"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Lütfen email'inizi giriniz";
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
                          const InputDecoration(labelText: "Kimlik Numarası"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Lütfen kimlik numaranızı giriniz";
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
                      decoration: const InputDecoration(labelText: "Şifre"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Lütfen şifrenizi giriniz";
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
                        onPressed: kayitol,
                        child: const Text("Kayıt Ol"),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GrsYap()),
                          );
                        },
                        child: const Text("Giriş Yap"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
