// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:async'; // Timer sınıfı için
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super. key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  double sayac = 0.000;
  late Timer _timer; // Timer nesnesini tanımla
  late int _hours;
  late int _minutes;

  @override
  void initState() {
    super.initState();
    _hours = 24;
    _minutes = 0;
    _startTimer();
  }

  void _startTimer() {
    // Timerı başlatıyor, her 1 dakikada bir azaltmak için Duration'ı belirtiyoruz
    _timer = Timer.periodic(const Duration(minutes: 1), (timer) {
      setState(() {
        if (_minutes == 0) {
          _hours--;
          _minutes = 59;
        } else {
          _minutes--;
        }
        if (_hours == 0 && _minutes == 0) {
          sayac += 0.054; 
          _hours = 24;
          _minutes = 0;
        }
      });
    });
  }

  @override
  void dispose() {
    // Timerı kaldırdığında dispose metodunu çağırarak timerı iptal ediyoruz
    _timer.cancel();
    super.dispose();
  }

  void kazimYap() {
    if (_hours == 24 && _minutes == 0) {
      setState(() {
        sayac += 0.054; // 24 saatte bir kazım yap
      });
    }
  }

  /*void openSocialMedia(String socialMediaUrl) async {
    if (await canLaunchUrl(socialMediaUrl)) {
      await launch(socialMediaUrl);
    } else {
      throw 'Colud not lounch $socialMediaUrl';
    }
  }*/
  void openSocialMedia(String socialMediaUrl) async {
  Uri uri = Uri.parse(socialMediaUrl);
  
  if (await canLaunch(uri.toString())) {
    await launch(uri.toString());
  } else {
    throw 'Could not launch $socialMediaUrl';
  }
}

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
          body: ListView(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 200, // Kartın genişliğini
                        height: 155, // Kartın yüksekliğini
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text("Kazı Yap Ve Kazanmaya başla !!!"),
                              const SizedBox(
                                height: 4,
                              ),
                              ElevatedButton(
                                onPressed: kazimYap,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Colors.blue, // Butonun arka plan rengi
                                  foregroundColor:
                                      Colors.white, // Buton metin rengi
                                ),
                                child: const Text("Kazım Yap"),
                              ),
                              const SizedBox(height: 2),
                              const Text("Kazım yapmaya kalan süreniz"),
                              const Icon(Icons.access_time), // Saat simgesi
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                "${_hours.toString().padLeft(2, '0')}:${_minutes.toString().padLeft(2, '0')}",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 35),
                  Column(
                    children: [
                      SizedBox(
                        width: 200, // Kartın genişliğini
                        height: 150, // Kartın yüksekliğini
                        child: Card(
                          child: Column(children: <Widget>[
                            const Text("Kazı Ve Kazanmaya başla"),
                            ElevatedButton(
                              onPressed: () {
                                kazimYap();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor:
                                    Colors.white, // Buton metin rengi
                              ),
                              child:const Text("Kazım Yap"),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Text("sıfır"),
              Text(
                "$sayac",
                style:
                    const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              height: 50,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
               IconButton(
  icon:const Icon(Icons.facebook, color: Colors.black), // Facebook logosu
  onPressed: () {
    openSocialMedia("https://www.facebook.com/profile.php?id=100084827082560");
  },
),

               IconButton(
  icon:const Icon(FontAwesomeIcons.instagram, color: Colors.black), // Instagram logosu
  onPressed: () {
    openSocialMedia("https://www.instagram.com/devoelopment/");
  },
),

                     IconButton(
  icon:const   Icon(FontAwesomeIcons.twitter, color: Colors.black), // Instagram logosu
  onPressed: () {
    openSocialMedia("https://twitter.com/home");
  },
),
     IconButton(
  icon:const Icon(FontAwesomeIcons.globe, color: Colors.black), // Facebook logosu
  onPressed: () {
    openSocialMedia("https://minepi.com/");
  },
),
                
                ],
              ),
            ),
          ),
        ),
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










/*import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:async'; //timer sınıfı için



class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  double sayac = 0.000;
  late Timer _timer; // Timer nesnesini tanımi
 bool isMiningAvailable = true;
  @override
  void initState() {
    super.initState();
    // Timerı başlatıyor, her 24saatte bir artırmak için Duration'ı belirtiyoruz
    _timer = Timer.periodic(const Duration(hours: 24), (timer) {
      setState(() {
        sayac += 0.054;
        isMiningAvailable = true;
      });
    });
  }

@override
void dispose() {
  // Timeri kalktıgında dispose metodunu cagırarak timerı iptal ediyoruz
  _timer.cancel();
  super.dispose();
}


  void artisayac() {
    setState(() {
      sayac += 0.054;
    });
  }

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
          body: ListView(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 200, // Kartın genişliğini
                        height: 155, // Kartın yüksekliğini
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text("Kazı Yap Ve Kazanmaya başla !!!"),
                              const SizedBox(
                                height: 4,
                              ),
                              ElevatedButton(
                                onPressed:artisayac,
                                child: Text("Kazım Yap"),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Colors.blue, // Butonun arka plan rengi
                                  foregroundColor:
                                      Colors.white, // Buton metin rengi
                                ),
                              ),
                              const SizedBox(height: 2),
                              const Text("kazım yapmaya kalan sureniz"),
                              const Icon(Icons.access_time), // Saat simgesi
                              const SizedBox(
                                  width:2,),
                                Text("${(sayac ~/ 24).toString().padLeft(2, '0')}:${(sayac % 24).toInt().toString().padLeft(2, '0')}"),
                           
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 35),
                  Column(
                    children: [
                      SizedBox(
                        width: 200, // Kartın genişliğini
                        height: 150, // Kartın yüksekliğini
                        child: Card(
                          child: Column(children: <Widget>[
                            const Text("Kazı Ve Kazanmaya başla"),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text("Kazım Yap"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.blue, 
                                foregroundColor:
                                    Colors.white, // Buton metin rengi
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Text("sıfır"),
              Text(
                "$sayac",
                style:
                    const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
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
