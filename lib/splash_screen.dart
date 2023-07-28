import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kofhotel/register_screen.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  void goToHome() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const RegisterScreen()),
          (route) => false);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    goToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: const Text(
            "KOFHOTEL",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
