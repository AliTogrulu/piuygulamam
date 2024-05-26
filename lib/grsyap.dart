// ignore_for_file: use_build_context_synchronously

/*import 'package:flutter/material.dart';
import 'package:piuygulamam/menuler/menu2.dart';

class Girisyap extends StatefulWidget {
  const Girisyap({super.key});

  @override
  State<Girisyap> createState() => _GirisyapState();
}

class _GirisyapState extends State<Girisyap> {
  final _formKey = GlobalKey<FormState>();
  String ad = "";
  String kimlikNumarasi = "";
  String sifre = "";
  bool giris = false;
  void    Girisyap() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        giris = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Giriş yap"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Kullanıcı Adınızı Giriniz'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Yanlış Kullanıcı Adı';
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
                      const InputDecoration(labelText: 'Kimlik Numarası'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Kayıtlı Kimlik Numaranızı Giriniz';
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
                  decoration: const InputDecoration(labelText: 'Şifre'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lütfen Şifrenizi Doğru Giriniz';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      sifre = value;
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: giris ? null : Girisyap,
                  child: const Text('Giriş Yap'),
                ),
                if (giris)
                  const Text(
                    'Kayıt işlemi başarıyla tamamlandı!',
                    style: TextStyle(color: Color.fromARGB(255, 13, 1, 4)),
                  ),
            const      SizedBox(height: 15,),
               
               ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) => const  Kayitol()));
                    },
                    child: const Text("geri dön")),
              ]
            ),
          ),
        ),
      ),
    );
  }
}*/ /*import 'package:flutter/material.dart';
import 'package:piuygulamam/database/database_helper.dart';
import 'package:piuygulamam/menuler/menu1.dart';
import 'package:piuygulamam/menuler/menu2.dart';


class Girisyap extends StatefulWidget {
  const Girisyap({super.key});

  @override
  State<Girisyap> createState() => _GirisyapState();
}

class _GirisyapState extends State<Girisyap> {
  final _formKey = GlobalKey<FormState>();
  String ad = "";
  String kimlikNumarasi = "";
  String sifre = "";
  bool giris = false;

  void Girisyap() async {
    if (_formKey.currentState!.validate()) {
      DatabaseHelper dbHelper = DatabaseHelper();
      bool success = await dbHelper.loginUser(kimlikNumarasi, sifre);
      setState(() {
        giris = success;
      });

      if (success) {
        print('Login successful');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Anasayfa()), // Doğru dosya yolunu ekleyin
        );
      } else {
        print('Invalid ID number or password');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Invalid ID number or password')),
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
          title: const Text("Giriş yap"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Kullanıcı Adınızı Giriniz'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Yanlış Kullanıcı Adı';
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
                      const InputDecoration(labelText: 'Kimlik Numarası'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Kayıtlı Kimlik Numaranızı Giriniz';
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
                  decoration: const InputDecoration(labelText: 'Şifre'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lütfen Şifrenizi Doğru Giriniz';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      sifre = value;
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: giris ? null : Girisyap,
                  child: const Text('Giriş Yap'),
                ),
                if (giris)
                  const Text(
                    'Giriş başarılı!',
                    style: TextStyle(color: Colors.green),
                  ),
                const SizedBox(height: 15,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => const Kayitol()));
                  },
                  child: const Text("Geri Dön"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

*/
/*
import 'package:flutter/material.dart';
import 'package:piuygulamam/database/database_helper.dart';
import 'package:piuygulamam/menuler/menu1.dart';
import 'package:piuygulamam/menuler/menu2.dart';

class Girisyap extends StatefulWidget {
  const Girisyap({super. key});

  @override
  State<Girisyap> createState() => _GirisyapState();
}

class _GirisyapState extends State<Girisyap> {
  final _formKey = GlobalKey<FormState>();
  String ad = "";
  String kimlikNumarasi = "";
  String sifre = "";
  bool giris = false;

  void girisYap() async {
    if (_formKey.currentState!.validate()) {
      DatabaseHelper dbHelper =DatabaseHelper.instance;
 
      bool success = await dbHelper.loginUser(ad, kimlikNumarasi, sifre);
      setState(() {
        giris = success;
      });

      if (success) {
        print('Giriş başarılı');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Anasayfa()), // Doğru dosya yolunu ekleyin
        );
      } else {
        print('Geçersiz kimlik numarası veya şifre');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Geçersiz kimlik numarası veya şifre')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Giriş yap"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Kullanıcı Adınızı Giriniz'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Yanlış Kullanıcı Adı';
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
                    const InputDecoration(labelText: 'Kimlik Numarası'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Kayıtlı Kimlik Numaranızı Giriniz';
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
                decoration: const InputDecoration(labelText: 'Şifre'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen Şifrenizi Doğru Giriniz';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    sifre = value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: giris ? null : girisYap,
                child: const Text('Giriş Yap'),
              ),
              if (giris)
                const Text(
                  'Giriş başarılı!',
                  style: TextStyle(color: Colors.green),
                ),
              const SizedBox(height: 15,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => const Kayitol()));
                },
                child: const Text("Geri Dön"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/
/*import 'package:flutter/material.dart';
import 'package:piuygulamam/database/database_helper.dart';
import 'package:piuygulamam/menuler/menu1.dart';
import 'package:piuygulamam/menuler/menu2.dart';

class Girisyap extends StatefulWidget {
  const Girisyap({super.key});

  @override
  State<Girisyap> createState() => _GirisyapState();
}

class _GirisyapState extends State<Girisyap> {
  final _formKey = GlobalKey<FormState>();
  String ad = "";
  String kimlikNumarasi = "";
  String sifre = "";
  bool giris = false;

  void girisYap() async {
    if (_formKey.currentState!.validate()) {
      DatabaseHelper dbHelper = DatabaseHelper.instance;
 
      bool success = await dbHelper.loginUser(ad, kimlikNumarasi, sifre);
      setState(() {
        giris = success;
      });

      if (success) {
        print('Giriş başarılı');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Anasayfa()), // Doğru dosya yolunu ekleyin
        );
      } else {
        print('Geçersiz kimlik numarası veya şifre');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Geçersiz kimlik numarası veya şifre')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Giriş yap"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Kullanıcı Adınızı Giriniz'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Yanlış Kullanıcı Adı';
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
                    const InputDecoration(labelText: 'Kimlik Numarası'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Kayıtlı Kimlik Numaranızı Giriniz';
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
                decoration: const InputDecoration(labelText: 'Şifre'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen Şifrenizi Doğru Giriniz';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    sifre = value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: giris ? null : girisYap,
                child: const Text('Giriş Yap'),
              ),
              if (giris)
                const Text(
                  'Giriş başarılı!',
                  style: TextStyle(color: Colors.green),
                ),
              const SizedBox(height: 15,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => const Kayitol()));
                },
                child: const Text("Geri Dön"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/
/*import 'package:flutter/material.dart';
import 'package:piuygulamam/database/database_helper.dart';
import 'package:piuygulamam/menuler/menu1.dart';
import 'package:piuygulamam/menuler/menu2.dart';

class Girisyap extends StatefulWidget {
  const Girisyap({super.key});

  @override
  State<Girisyap> createState() => _GirisyapState();
}

class _GirisyapState extends State<Girisyap> {
  final _formKey = GlobalKey<FormState>();
  String ad = "";
  String kimlikNumarasi = "";
  String sifre = "";
  bool giris = false;

  void girisYap() async {
    if (_formKey.currentState!.validate()) {
      DatabaseHelper dbHelper = DatabaseHelper.instance;

      bool success = await dbHelper.loginUser(ad, kimlikNumarasi, sifre);
      setState(() {
        giris = success;
      });

      if (success) {
        print('Giriş başarılı');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Anasayfa()), // Doğru dosya yolunu ekleyin
        );
      } else {
        print('Geçersiz kimlik numarası veya şifre');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Geçersiz kimlik numarası veya şifre')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Giriş yap"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Kullanıcı Adınızı Giriniz'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Yanlış Kullanıcı Adı';
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
                    const InputDecoration(labelText: 'Kimlik Numarası'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Kayıtlı Kimlik Numaranızı Giriniz';
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
                decoration: const InputDecoration(labelText: 'Şifre'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen Şifrenizi Doğru Giriniz';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    sifre = value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: giris ? null : girisYap,
                child: const Text('Giriş Yap'),
              ),
              if (giris)
                const Text(
                  'Giriş başarılı!',
                  style: TextStyle(color: Colors.green),
                ),
              const SizedBox(height: 15,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => const Kayitol()));
                },
                child: const Text("Geri Dön"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:piuygulamam/database/database_helper.dart';
import 'package:piuygulamam/menuler/menu1.dart';
import 'package:logger/logger.dart';

class GrsYap extends StatefulWidget {
  const GrsYap({super.key});

  @override
  State<GrsYap> createState() => _GrsYapState();
}

class _GrsYapState extends State<GrsYap> {
  final _formKey = GlobalKey<FormState>();
  String username = "";
  String tcNumber = "";
  String password = "";

  final dbHelper = DatabaseHelper.instance;
  final logger = Logger();

Future<void> girisYap() async {
  if (_formKey.currentState!.validate()) {
    bool success = await dbHelper.loginUser(username, tcNumber, password);

    if (success) {
      logger.i('Giriş başarılı: $username'); // Yeni eklendi
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Giriş başarılı!')),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Anasayfa()),
      );
    } else {
      logger.w('Giriş başarısız: $username'); // Yeni eklendi
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Giriş başarısız. Lütfen bilgilerinizi kontrol edin.'),
        ),
      );
      // Hata oluştuğunda konsola hata mesajı yazdır
      logger.e('Giriş yapılamadı: $username');
    }
  }
}

 /* Future<void> girisYap() async {
    if (_formKey.currentState!.validate()) {
      bool success = await dbHelper.loginUser(username, tcNumber, password);

      if (success) {
        logger.i('Giriş başarılı: $username'); // Yeni eklendi
        
          ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Giriş başarılı!')),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>const Anasayfa()),
        );
      } else {
        logger.w('Giriş başarısız: $username'); // Yeni eklendi
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content:
                  Text('Giriş başarısız. Lütfen bilgilerinizi kontrol edin.')),
        );
      }
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Giriş Yap",
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
                          username = value;
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
                          tcNumber = value;
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
                          password = value;
                        });
                      },
                    ),
                    const SizedBox(height: 16.0),
                    Center(
                      child: ElevatedButton(
                        onPressed: girisYap,
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
