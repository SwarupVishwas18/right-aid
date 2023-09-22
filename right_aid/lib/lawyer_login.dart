import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:right_aid/firebase_options.dart';
import 'package:right_aid/lawyer_home.dart';
import 'package:right_aid/lawyer_signup.dart';
import 'utilities/form_validation.dart';
import 'utilities/user.dart';
import 'utilities/fetch_details.dart';
import 'home.dart';

class LawyerLogin extends StatefulWidget {
  const LawyerLogin({super.key});

  @override
  State<LawyerLogin> createState() => _LawyerLoginState();
}

class _LawyerLoginState extends State<LawyerLogin> {
  late final TextEditingController password;
  late final TextEditingController enrollmentNumber;
  @override
  void initState() {
    enrollmentNumber = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    enrollmentNumber.dispose();
    password.dispose();
    super.dispose();
  }

  void checkCredentials() async {
    try {
      await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform);
      print('Initialized');
    } catch (e) {
      print('Error initializing Firebase: $e');
    }
    final CollectionReference inmateCollection =
        FirebaseFirestore.instance.collection('lawyer');
    final QuerySnapshot querySnapshotOne = await inmateCollection
        .where('enrollment_number', isEqualTo: enrollmentNumber.text)
        .get();
    if (querySnapshotOne.docs.isNotEmpty) {
      final QuerySnapshot querySnapshotTwo = await inmateCollection
          .where('enrollment_number', isEqualTo: enrollmentNumber.text)
          .where('password', isEqualTo: (password.text))
          .get();
      if (querySnapshotTwo.docs.isNotEmpty) {
        FormValidation.showToast('LogIn Successful');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LawyerHome()));
      } else {
        //we can add alertbox
        FormValidation.showToast('Wrong Password');
      }
    } else {
      FormValidation.showToast('Enrollment number not found');
    }
  }

  void clicked() {
    if (FormValidation.isTextEditingControllerEmpty(enrollmentNumber) ||
        FormValidation.isTextEditingControllerEmpty(password)) {
      FormValidation.showToast('Fill all details in the Form');
    } else {
      checkCredentials();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/homebg.png"), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 250,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(242, 248, 247, 238),
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
                      "Login as Lawyer",
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
                              controller: enrollmentNumber,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(10),
                                          right: Radius.circular(10))),
                                  hintText: "Enrollment No:",
                                  hintStyle: TextStyle(color: Colors.black12)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              controller: password,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(10),
                                          right: Radius.circular(10))),
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.black12)),
                              obscureText: true,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextButton(
                              onPressed: () => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LawyerHome()))
                                  },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 40),
                                child: ElevatedButton(
                                  onPressed: () => {clicked()},
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              const Color.fromARGB(
                                                  255, 31, 44, 79))),
                                  child: const Text(
                                    "LOGIN",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextButton(
                        onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LawyerSignup()))
                            },
                        child: const Text("Create an account instead")),
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
