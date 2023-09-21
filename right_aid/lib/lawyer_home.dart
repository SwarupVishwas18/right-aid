import 'package:flutter/material.dart';

class LawyerHome extends StatelessWidget {
  const LawyerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 100,
          ),
          const Text(
            "Current Cases",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 31, 44, 79)),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Case Id : ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 247, 238),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        "193131391391",
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 247, 238),
                            fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Petitioner : ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 247, 238),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "193131391391",
                        style: TextStyle(
                          color: Color.fromARGB(255, 248, 247, 238),
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Next Hearing ;",
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 247, 238),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "193131391391",
                        style: TextStyle(
                          color: Color.fromARGB(255, 248, 247, 238),
                          fontSize: 18,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 31, 44, 79)),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Case Id : ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 247, 238),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        "193131391391",
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 247, 238),
                            fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Petitioner : ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 247, 238),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "193131391391",
                        style: TextStyle(
                          color: Color.fromARGB(255, 248, 247, 238),
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Next Hearing ;",
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 247, 238),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "193131391391",
                        style: TextStyle(
                          color: Color.fromARGB(255, 248, 247, 238),
                          fontSize: 18,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 31, 44, 79)),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Case Id : ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 247, 238),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        "193131391391",
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 247, 238),
                            fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Petitioner : ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 247, 238),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "193131391391",
                        style: TextStyle(
                          color: Color.fromARGB(255, 248, 247, 238),
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Next Hearing ;",
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 247, 238),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "193131391391",
                        style: TextStyle(
                          color: Color.fromARGB(255, 248, 247, 238),
                          fontSize: 18,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Pending Cases",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 248, 160, 150)),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Case Id : ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        "193131391391",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Petitioner : ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "193131391391",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Next Hearing ;",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "193131391391",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 248, 160, 150)),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Case Id : ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        "193131391391",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Petitioner : ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "193131391391",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Next Hearing ;",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "193131391391",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 248, 160, 150)),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Case Id : ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        "193131391391",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Petitioner : ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "193131391391",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Next Hearing ;",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "193131391391",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    ));
  }
}
