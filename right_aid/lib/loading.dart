import 'dart:async';

import 'package:flutter/material.dart';
import 'package:right_aid/home.dart';
import 'package:right_aid/main_home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const MyHomePage(
                      title: 'Right Aid ',
                    ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/load.png"), fit: BoxFit.cover)),
      child: const Column(children: [
        SizedBox(
          height: 450,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
                child: Text(
              '“Justice Delayed is Justice Denied”',
              style: TextStyle(
                fontSize: 18,
              ),
            )),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'William Ewart Gladstone',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
      ]),
    ));
  }
}
