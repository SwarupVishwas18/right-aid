import 'package:flutter/material.dart';

class ViewLawyers extends StatelessWidget {
  const ViewLawyers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/connectbg.png"),
              fit: BoxFit.cover)),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(children: [
        const SizedBox(
          height: 30,
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(242, 248, 247, 238),
              border: Border.all(
                  width: 1.0, color: const Color.fromARGB(255, 0, 0, 0)),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    "Adv. Ichigo Kurosaki",
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Nashik, Maharashtra",
                    style: TextStyle(color: Colors.black54),
                  ),
                  Text(
                    "Contact : rss@gmail.com",
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )),
        const SizedBox(
          height: 20,
        ),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(242, 248, 247, 238),
              border: Border.all(
                  width: 1.0, color: const Color.fromARGB(255, 0, 0, 0)),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    "Adv. Ichigo Kurosaki",
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Nashik, Maharashtra",
                    style: TextStyle(color: Colors.black54),
                  ),
                  Text(
                    "Contact : rss@gmail.com",
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )),
        const SizedBox(
          height: 20,
        ),
      ]),
    ));
  }
}
