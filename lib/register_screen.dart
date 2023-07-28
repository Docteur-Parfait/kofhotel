import 'package:flutter/material.dart';
import 'package:kofhotel/home_screen.dart';

import 'constant.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "KOFHOTEL",
                style: TextStyle(fontSize: 40),
              ),
              br(),
              const Text(
                "INSCRIPTION",
                style: TextStyle(fontSize: 20),
              ),
              br(),
              Form(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Votre nom complet"),
                    ),
                    br(),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Votre adresse email"),
                    ),
                    br(),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Votre mot de passe"),
                    ),
                    br(),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Confirmer le mot de passe"),
                    ),
                    br(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeSCreen()),
                            (route) => false);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text(
                        "S'inscrire",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
