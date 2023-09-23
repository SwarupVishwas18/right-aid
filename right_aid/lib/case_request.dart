import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:right_aid/utilities/fetch_details.dart';
import 'firebase_options.dart';
import 'utilities/user.dart';

class CaseRequest extends StatefulWidget {
  const CaseRequest({super.key});
  @override
  State<CaseRequest> createState() => _CaseRequest();
}

class _CaseRequest extends State<CaseRequest> {
  CaseDetails? caseDetails;
  String? pAdvocates;
  String? rAdvocates;
  String cnr =
      "246810"; // use User.getCnr here but in the middle of application it will give null value
  String? name;
  String? gender;
  int? age;
  @override
  void initState() {
    super.initState();
    fetchData();
    getDataFromDatabase();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void getDataFromDatabase() async {
    try {
      await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform);
      print('Initialized');
    } catch (e) {
      print('Error initializing Firebase: $e');
    }
    final CollectionReference inmateCollection =
        FirebaseFirestore.instance.collection('inmate');
    final QuerySnapshot snapshot =
        await inmateCollection.where('cnr', isEqualTo: cnr).get();
    final DocumentSnapshot document = snapshot.docs.first;
    name = document.get('name');
    gender = document.get("gender");
    age = document.get('age');
    print(name);
    print(gender);
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
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
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                  "REG NO: ${caseDetails?.registrationNumber}"),
                              SizedBox(
                                width: 90,
                              ),
                              Text("STATUS : ${caseDetails?.status}")
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
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("Name: ${name}"),
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
                              Text("Gender/Age: ${gender} / ${age}"),
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
                    child: Padding(
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
                    child: Padding(
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
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("Case Under Act:"),
                              SizedBox(
                                width: 30,
                              ),
                              Text("${caseDetails?.actsAndSections}")
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
                              Text("${caseDetails?.caseUnderSection}")
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
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                  "${name}, ${age} years old Charged under ${caseDetails?.caseUnderSection} for negligent driving leading to death Arrested on ${caseDetails?.registrationDate} from Delhi Next hearing on ${caseDetails?.nextHearingDate} at ${caseDetails?.firstHearing} Seeking bail approval before next hearing date as the only earning member in family"),
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
              child: Center(
                child: TextButton(
                    onPressed: () => {},
                    child: const Text(
                      "Accept",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
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
              child: Center(
                child: TextButton(
                    onPressed: () => {},
                    child: const Text(
                      "Decline",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
