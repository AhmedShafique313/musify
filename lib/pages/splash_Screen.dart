// ignore: file_names
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:musify/pages/all_in_one.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const AllInOne()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(66, 35, 33, 33)
          ])),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
