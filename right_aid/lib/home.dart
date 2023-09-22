import 'package:flutter/material.dart';
import 'utilities/fetch_details.dart';
import 'package:right_aid/case_status.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  CaseDetails? caseDetails;
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    final caseData = await fetchCaseDetails('456789');
    setState(() {
      caseDetails = caseData;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/home.png"), fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(242, 248, 247, 238),
                    border: Border.all(
                        width: 1.0, color: const Color.fromARGB(255, 0, 0, 0)),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "NEXT COURT PROCEEDING : ${caseDetails?.nextHearingDate}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ],
                    ),
                  )),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 31, 44, 79),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CaseStatus()))
                              },
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Image(image: AssetImage("assets/img/case.png")),
                                Text(
                                  'Case Status',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 31, 44, 79),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          onPressed: () => {},
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Image(
                                    image: AssetImage("assets/img/lawyer.png")),
                                Text(
                                  'Connect With Lawyer',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          )),
                    ])),
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 31, 44, 79),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          onPressed: () => {},
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Image(
                                    image:
                                        AssetImage("assets/img/Complaint.png")),
                                Text(
                                  'File Grievence',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 31, 44, 79),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          onPressed: () => {},
                          child: const Column(
                            children: [
                              Image(image: AssetImage("assets/img/case.png")),
                              Text(
                                'Legal Assistant',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )),
                    ])),
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 31, 44, 79),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          onPressed: () => {},
                          child: const Column(
                            children: [
                              Image(
                                  image: AssetImage("assets/img/medical.png")),
                              Text(
                                'Medical Status',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 31, 44, 79),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          onPressed: () => {},
                          child: const Column(
                            children: [
                              Image(
                                  image: AssetImage("assets/img/Teacher.png")),
                              Text(
                                'Training',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )),
                    ])),
              )
            ]),
          )),
    );
  }
}
