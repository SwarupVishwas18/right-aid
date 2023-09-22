import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:right_aid/firebase_options.dart';
import 'utilities/form_validation.dart';

class FileGrievance extends StatefulWidget {
  const FileGrievance({super.key});
  @override
  State<FileGrievance> createState() => _FileGrievance();
}

class _FileGrievance extends State<FileGrievance> {
  late final TextEditingController inmateName;
  late final TextEditingController prisonName;
  late final TextEditingController location;
  late final TextEditingController relation;
  late final TextEditingController password;

  @override
  void initState() {
    inmateName = TextEditingController();
    prisonName = TextEditingController();
    location = TextEditingController();
    relation = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  void fileGrievance() async {
    try {
      await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform);
      print('Initialized');
    } catch (e) {
      print('Error initializing Firebase: $e');
    }
    final inmateDocumentReference =
        FirebaseFirestore.instance.collection('file_grievance').doc();
    await inmateDocumentReference.set({
      'inmate_name': inmateName.text,
      'prison_name': prisonName.text,
      'location': location.text,
      'relation': relation.text,
      'password': password.text,
    });
  }

  void clicked() {
    if (FormValidation.isTextEditingControllerEmpty(inmateName) ||
        FormValidation.isTextEditingControllerEmpty(prisonName) ||
        FormValidation.isTextEditingControllerEmpty(location) ||
        FormValidation.isTextEditingControllerEmpty(relation) ||
        FormValidation.isTextEditingControllerEmpty(password)) {
      FormValidation.showToast('Fill all details in the Form');
    } else {
      fileGrievance();
      FormValidation.showToast("Grievance Submitted");
    }
  }

  @override
  void dispose() {
    inmateName.dispose();
    prisonName.dispose();
    location.dispose();
    relation.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color.fromARGB(242, 248, 247, 238),
        ),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                      width: 1.0, color: const Color.fromARGB(255, 0, 0, 0)),
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "File Grievance",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              controller: inmateName,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(10),
                                          right: Radius.circular(10))),
                                  hintText: "Inmate Name",
                                  hintStyle: TextStyle(color: Colors.black45)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              controller: prisonName,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(10),
                                          right: Radius.circular(10))),
                                  hintText: "Prison Name",
                                  hintStyle: TextStyle(color: Colors.black45)),
                              obscureText: false,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              controller: location,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(10),
                                          right: Radius.circular(10))),
                                  hintText: "City/State",
                                  hintStyle: TextStyle(color: Colors.black45)),
                              obscureText: false,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              controller: relation,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(10),
                                          right: Radius.circular(10))),
                                  hintText: "Relation with Inmate",
                                  hintStyle: TextStyle(color: Colors.black45)),
                              obscureText: false,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              controller: password,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(10),
                                          right: Radius.circular(10))),
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.black45)),
                              obscureText: true,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: ElevatedButton(
                              onPressed: () => {clicked()},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<
                                          Color>(
                                      const Color.fromARGB(255, 31, 44, 79))),
                              child: const Text(
                                "City/State",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
