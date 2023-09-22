import 'package:flutter/material.dart';

class CaseRequest extends StatelessWidget {
  const CaseRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/chat_bg.png"),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Current Case",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const Divider(
                  color: Color.fromARGB(255, 186, 183, 183),
                  height: 15,
                  thickness: 0.7,
                  indent: 0,
                  endIndent: 0,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text("Case Details",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                          width: 1.0,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                            height: 15,
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
                  height: 15,
                ),
                //prisoner
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text("Prisoner Details",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                          width: 1.0,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("Name: Swarup Vishwas"),
                              SizedBox(
                                width: 30,
                              ),
                              // Text("Gender/Age: Male/19")
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text("Gender/Age: Male/19"),
                              SizedBox(
                                width: 90,
                              ),
                              // Text("STATUS : PENDING")
                            ],
                          )
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text("Party Details",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                          width: 1.0,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                              Text("-")
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(color: Colors.black),
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
                  height: 15,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text("Case Status",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                          width: 1.0,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                              Text("28 Aug 2022")
                            ],
                          ),
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text("Acts",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                          width: 1.0,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                            height: 10,
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
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text("Case Summary",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                          width: 1.0,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                  "Rohit Kumar, 28 years old Charged under IPC Section 279 and 304A for negligent driving leading to death Arrested on 14th February 2023 from Delhi Next hearing on 10th March 2023 at Patiala House Court Seeking bail approval before next hearing date as the only earning member in family"),
                              // Text("Gender/Age: Male/19")
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    )),
              ]),
            ),
          )),
      //add two buttons accept and decline below  info card\
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 31, 44, 79),
                border: Border.all(
                    width: 1.0, color: const Color.fromARGB(99, 103, 102, 102)),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Center(
                child: Text(
                  "Accept",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 152, 253, 204),
                border: Border.all(
                    width: 1.0, color: Color.fromARGB(99, 103, 102, 102)),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Center(
                child: Text(
                  "Decline",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
