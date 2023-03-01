import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_11/Tlebirr_login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const TelebirLogin()));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(100),
          child: ClipRect(
            child: Image.asset("assets/images .png",
                fit: BoxFit.fill, height: 150, width: 200),
          ),
        ),
      ]),
    );
  }
}
