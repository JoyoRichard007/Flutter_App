import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  bool _isSecret = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: Column(
              children: [
                Text(
                  "password".toUpperCase(),
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Form(
                  child: Center(
                      child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Form(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                              Text("Entrez votre mot de passe"),
                              SizedBox(height: 10.0),
                              TextFormField(
                                obscureText: _isSecret,
                                decoration: InputDecoration(
                                    suffixIcon: InkWell(
                                      onTap: () => setState(
                                          () => _isSecret = !_isSecret),
                                      child: Icon(!_isSecret
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                    ),
                                    hintText: "Ex: df!JGH**UJkl7zds",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                    )),
                              ),
                              SizedBox(
                                height: 11.0,
                              ),
                              ElevatedButton(
                                  onPressed: () => print("Envoyer"),
                                  child: Text('Continuer'.toUpperCase()))
                            ]))
                      ],
                    ),
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
