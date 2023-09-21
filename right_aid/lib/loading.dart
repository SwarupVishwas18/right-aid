import 'package:flutter/material.dart';

class LoadScreen extends StatelessWidget {
  const LoadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
