import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:piuygulamam/generated/locale_keys.g.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('tr', 'TR')],
      path: 'assets/translations',
      fallbackLocale:const Locale('en', 'US'),
      child: const Diller(),
    ),
  );
}

class    Diller extends StatefulWidget {
  const Diller({super.key});

  @override
  State<Diller> createState() => _DillerState();
}

class _DillerState extends State<Diller> {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'material APP',
      home: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.anasayfa_title.tr()),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(LocaleKeys.anasayfa_body.tr()),
              ElevatedButton(
                onPressed: () {
                  context.setLocale( const   Locale("tr", "TR"));
                },
                child:const Text("Türkç yap"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.setLocale( const   Locale("en", "US"));
                },
                child: const Text("ingilızce yap"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}