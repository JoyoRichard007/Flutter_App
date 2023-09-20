import 'package:flutter/material.dart';

class Authscreen extends StatefulWidget {
  const Authscreen({super.key});

  @override
  State<Authscreen> createState() => _AuthscreenState();
}

class _AuthscreenState extends State<Authscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Page d'accueil"),
        ),
        body: Center(
          child: Column(
            children: [
              RichText(
                  text: TextSpan(
                text: 'Bienvenue sur\n'.toUpperCase(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                      text: 'la page\n '.toUpperCase(),
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      )),
                  TextSpan(
                    text: ' d\'accueil'.toUpperCase(),
                  )
                ],
              )),
              // Text("Bienvenue sur\n la page d'accueil"),
              Text(
                "Ceci est pour vous",
              ),
              SizedBox(
                height: 50.0,
              ),
              Text("Entrez votre adresse mail"),
            ],
          ),
        ),
      ),
    );
  }
}
