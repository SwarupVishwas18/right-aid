import 'package:flutter/material.dart';

class LawyerConnect extends StatelessWidget {
  const LawyerConnect({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/connectbg.png"),
                  fit: BoxFit.cover)),
          child: Column(children: [
            Row(
              children: [
                const TextField(  
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(10),
                              right: Radius.circular(10))),
                      hintText: "Location",
                      hintStyle: TextStyle(color: Colors.black12)),
                ),
                ElevatedButton(
                  onPressed: () => {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 31, 44, 79))),
                  child: const Text(
                    "SEARCH",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                border: Border.all(
                    width: 1.0, color: const Color.fromARGB(255, 0, 0, 0)),
                borderRadius: const BorderRadius.all(Radius.circular(6)),
              ),
              child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(children: [
                    Text(
                      "Adv. Riddhi Sonawane",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Nashik, Maharashtra",
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Contact : rss@gmail.com",
                    )
                  ])),
            )
          ])),
    ));
  }
}
