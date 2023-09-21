import 'package:flutter/material.dart';

class CaseStatus extends StatelessWidget {
  const CaseStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/statusbg.png"),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: [
            const SizedBox(
              height: 70,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text("Case Details"),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                      width: 1.0, color: const Color.fromARGB(255, 0, 0, 0)),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("CNR: KAMS1890992999992"),
                          SizedBox(
                            width: 30,
                          ),
                          Text("REG DATE: 21/11/2020")
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text("REG NO: PCR/38/2020"),
                          SizedBox(
                            width: 90,
                          ),
                          Text("STATUS : PENDING")
                        ],
                      )
                    ],
                  ),
                )),
            const SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text("Party Details"),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                      width: 1.0, color: const Color.fromARGB(255, 0, 0, 0)),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Petitioner : "),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Swarup Vishwas")
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("Advocates : "),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Riddhi Sonawane, Omkar Kanase")
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                       Divider(
                        color: Colors.black
                      ),
                      Row(
                        children: [
                          Text("Respondant : "),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Rakshada Giri")
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("Advocate :  "),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Riddhi Sonawane, Gyanvi Patil")
                        ],
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text("Case Status"),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                      width: 1.0, color: const Color.fromARGB(255, 0, 0, 0)),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Case Stage: "),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Hearing")
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("Court: "),
                          SizedBox(
                            width: 10,
                          ),
                          Text("813-iv addl civil judge and jmfc")
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text("First Hearing : "),
                          SizedBox(
                            width: 10,
                          ),
                          Text("2 Sept 2019")
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("Next Hearing : "),
                          SizedBox(
                            width: 10,
                          ),
                          Text("28 Aug")
                        ],
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text("Acts"),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                      width: 1.0, color: const Color.fromARGB(255, 0, 0, 0)),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Case Under Act:"),
                          SizedBox(
                            width: 110,
                          ),
                          Text("Under sec 200 of IPC")
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text("Case Under Section:"),
                          SizedBox(
                            width: 90,
                          ),
                          Text("426A, 200, 420, 198")
                        ],
                      )
                    ],
                  ),
                )),
          ]),
        ),
      ),
    );
  }
}
