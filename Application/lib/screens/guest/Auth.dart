// ignore: file_names
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
          // ignore: prefer_const_constructors
          title: Text("Page d'accueil"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    text: 'd\'accueil'.toUpperCase(),
                  )
                ],
              )),
              // ignore: prefer_const_constructors
              Text(
                "Ceci est pour vous",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 50.0,
              ),
              // ignore: prefer_const_constructors

              Form(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                    Text("Entrez votre adresse mail"),
                    SizedBox(height: 10.0),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Ex: joyop20.aps2b@gmail.com",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            borderSide: BorderSide(color: Colors.grey),
                          )),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                        onPressed: () => print("Envoyer"),
                        child: Text('Continuer'.toUpperCase()))
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
