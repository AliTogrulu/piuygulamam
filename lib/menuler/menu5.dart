import 'package:flutter/material.dart';


class Paylas extends StatefulWidget {
  const Paylas({super.key});

  @override
  State<Paylas> createState() => _PaylasState();
}

class _PaylasState extends State<Paylas> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Paylaş ve kazan"),
          centerTitle: true,
        ),
        body:const  Text("data")
      ),
    );
  }
}
