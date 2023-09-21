import 'package:flutter/material.dart';

class SeminarView extends StatelessWidget {
  const SeminarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 247, 247, 237)),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(children: [
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Training and Seminars",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text("Scheduled Training"),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38, width: 1.0),
                  borderRadius: BorderRadius.circular(2)),
            ),
          ])),
    ));
  }
}
