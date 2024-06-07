import 'package:contactapp/views/screens/homescreen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Contactapp());
}

class Contactapp extends StatelessWidget {
  const Contactapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
