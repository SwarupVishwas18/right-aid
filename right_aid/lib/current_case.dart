import 'package:flutter/material.dart';
import 'package:right_aid/utilities/fetch_details.dart';

class CurrentCase extends StatefulWidget {
  const CurrentCase({super.key});
  State<CurrentCase> createState() => _CurrentCase();
}

class _CurrentCase extends State<CurrentCase> {
  CaseDetails? caseDetails;
  String? pAdvocates;
  String? rAdvocates;
  String cnr = "456789";
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  fetchData() async {
    final caseData = await fetchCaseDetails(cnr);
    setState(() {
      caseDetails = caseData;
      pAdvocates = caseDetails?.petitionerAdvocates.join(', ');
      rAdvocates = caseDetails?.respondentsAdvocates.join(', ');
    });
  }

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
                //add horizontal line

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
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                          width: 1.0,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("CNR: ${cnr}"),
                              SizedBox(
                                width: 30,
                              ),
                              Text("REG DATE: ${caseDetails?.registrationDate}")
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Text(
                                  "REG NO: ${caseDetails?.registrationNumber}"),
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
                  child: const Text("Party Details",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                          width: 1.0,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("Petitioner : "),
                              SizedBox(
                                width: 10,
                              ),
                              Text("${caseDetails?.petitioner}")
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
                              Text("${pAdvocates}")
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
                              Text("${caseDetails?.respondent}")
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
                              Text("${rAdvocates}")
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
                  child: const Text("Case Status",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                          width: 1.0,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("Case Stage: "),
                              SizedBox(
                                width: 10,
                              ),
                              Text("${caseDetails?.caseStage}")
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
                              Text("${caseDetails?.judicialBranch}")
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
                              Text("${caseDetails?.firstHearing}")
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
                              Text("${caseDetails?.nextHearingDate}")
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
                  child: const Text("Acts",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                          width: 1.0,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                  "Case Under Act: ${caseDetails?.actsAndSections}"),
                              SizedBox(
                                width: 110,
                              ),
                              Text("")
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
                              Text("${caseDetails?.caseUnderSection}")
                            ],
                          )
                        ],
                      ),
                    )),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    child: const Text("DECLINE CASE"),
                    onPressed: () => {},
                  ),
                )
              ]),
            ),
          )),
    );
  }
}
