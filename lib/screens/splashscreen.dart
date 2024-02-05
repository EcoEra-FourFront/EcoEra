import 'dart:async';

import 'package:ecoera/screens/loginpage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 237, 237, 237),
      child: Center(
        child: SizedBox(
            width: 200,
            height: 200,
            child: Image.asset('assets/icons/logo.png')),
      ),
    ));
  }
}
