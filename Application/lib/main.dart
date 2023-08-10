import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var info = "Bienvenue sur la page d'accueil";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: const Center(
          child: Text(
            'Hello World!',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black87,
            ),
          ),
        ));
  }
}
