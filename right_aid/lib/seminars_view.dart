import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:right_aid/firebase_options.dart';

class SeminarView extends StatefulWidget {
  const SeminarView({super.key});
  @override
  State<SeminarView> createState() => _SeminarView();
}

class _SeminarView extends State<SeminarView> {
  String cnr = "456789";
  int? rewardPoints;
  @override
  void initState() {
    // TODO: implement initState
    getDataFromDatabase();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
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
    rewardPoints = document.get('reward_points');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 247, 247, 237)),
            child: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(children: [
                    const SizedBox(
                      height: 100,
                    ),
                    const Text(
                      "Training and Seminars",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Text(
                      "Total Reward Points : ${rewardPoints}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "Scheduled Training",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38, width: 1.0),
                          borderRadius: BorderRadius.circular(2)),
                      child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: 210,
                                    child: Text(
                                      "Yoga & Meditation classes",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                    width: 70,
                                    child: Text(
                                      "12/5/2023",
                                      textAlign: TextAlign.left,
                                    ))
                              ])),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38, width: 1.0),
                          borderRadius: BorderRadius.circular(2)),
                      child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: 210,
                                    child: Text(
                                      "Yoga & Meditation classes",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                    width: 70,
                                    child: Text(
                                      "12/5/2023",
                                      textAlign: TextAlign.left,
                                    ))
                              ])),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38, width: 1.0),
                          borderRadius: BorderRadius.circular(2)),
                      child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: 210,
                                    child: Text(
                                      "Yoga & Meditation classes",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                    width: 70,
                                    child: Text(
                                      "12/5/2023",
                                      textAlign: TextAlign.left,
                                    ))
                              ])),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38, width: 1.0),
                          borderRadius: BorderRadius.circular(2)),
                      child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: 210,
                                    child: Text(
                                      "Yoga & Meditation classes",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                    width: 70,
                                    child: Text(
                                      "12/5/2023",
                                      textAlign: TextAlign.left,
                                    ))
                              ])),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Scheduled Training",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 216, 242, 236),
                          border: Border.all(color: Colors.black38, width: 1.0),
                          borderRadius: BorderRadius.circular(2)),
                      child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: 150,
                                    child: Text(
                                      "Yoga & Meditation classes",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                    width: 100,
                                    child: Text(
                                      "12/5/2023",
                                      textAlign: TextAlign.left,
                                    )),
                                SizedBox(
                                    width: 50,
                                    child: Text(
                                      "Present",
                                      textAlign: TextAlign.left,
                                    ))
                              ])),
                    )
                  ])),
            )));
  }
}
