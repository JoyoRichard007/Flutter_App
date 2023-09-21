import 'package:flutter/material.dart';
import 'package:premier_app/screens/Home.dart';
import 'package:premier_app/screens/guest/Auth.dart';
import 'package:premier_app/screens/guest/Password.dart';
import 'package:premier_app/screens/guest/Term.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  var info = "Bienvenue sur la page d'accueil";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter',
      home: PasswordScreen(),
    );
  }
}
