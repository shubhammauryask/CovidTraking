
import 'dart:async';

import 'package:covidtraking/screens/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreen1State();
}

class _splashScreen1State extends State<splashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/covid.png',
            fit: BoxFit.contain,
          ),
          Align(
            alignment: Alignment(0,0.8),
              child: Text('Covid Tracking App',style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xff982176)),))
        ],
      ),
    );
  }
}