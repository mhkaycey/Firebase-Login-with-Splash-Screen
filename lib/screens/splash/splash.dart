import 'dart:async';

import 'package:firebase/config/kcolor.dart';
import 'package:firebase/screens/home/home.dart';
import 'package:firebase/screens/index.dart';
import 'package:flutter/material.dart';

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.kToDark,
      //color: const Color(0xff451c16),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/firebase.png"),
            const DefaultTextStyle(
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              child: Text("Limitless Possility"),
            )
          ],
        ),
      ),

      // FlutterLogo(
      //   size: MediaQuery.of(context).size.height,
      // ),
    );
  }
}
