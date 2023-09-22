import 'package:flutter/material.dart';
import 'utilities/fetch_details.dart';

class CaseStatus extends StatefulWidget {
  const CaseStatus({super.key});
  @override
  State<CaseStatus> createState() => _CaseStatus();
}

class _CaseStatus extends State<CaseStatus> {
  CaseDetails? caseDetails;
  String? pAdvocates;
  String? rAdvocates;
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
    final caseData = await fetchCaseDetails('456789');
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
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("CNR: ${caseDetails?.nextHearingDate}"),
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
                          Text("REG NO: ${caseDetails?.registrationNumber}"),
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
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Petitioner : "),
                          SizedBox(
                            width: 10,
                          ),
                          Text(" ${caseDetails?.petitioner}")
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
                child: Padding(
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
                          Text('${caseDetails?.nextHearingDate}')
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
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Case Under Act:"),
                          SizedBox(
                            width: 110,
                          ),
                          Text('${caseDetails?.actsAndSections}')
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
