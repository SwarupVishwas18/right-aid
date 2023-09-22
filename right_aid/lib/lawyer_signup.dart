import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:right_aid/firebase_options.dart';
import 'package:right_aid/lawyer_home.dart';
import 'package:right_aid/lawyer_login.dart';
import 'utilities/form_validation.dart';

class LawyerSignup extends StatefulWidget {
  const LawyerSignup({super.key});
  State<LawyerSignup> createState() => _LawyerLoginState();
}

class _LawyerLoginState extends State<LawyerSignup> {
  late final TextEditingController name;
  late final TextEditingController enrollmentNumber;
  late final TextEditingController emailId;
  late final TextEditingController contactNo;
  late final TextEditingController firm;
  late final TextEditingController password;

  void initState() {
    name = TextEditingController();
    enrollmentNumber = TextEditingController();
    emailId = TextEditingController();
    contactNo = TextEditingController();
    firm = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  void dispose() {
    name.dispose();
    enrollmentNumber.dispose();
    emailId.dispose();
    contactNo.dispose();
    firm.dispose();
    password.dispose();
    super.dispose();
  }

  void storeLawyerData() async {
    try {
      await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform);
      print('Initialized');
    } catch (e) {
      print('Error initializing Firebase: $e');
    }
    final inmateDocumentReference =
        FirebaseFirestore.instance.collection('lawyer').doc();
    await inmateDocumentReference.set({
      'name': name.text,
      'enrollment_number': enrollmentNumber.text,
      'email_id': emailId.text,
      'phone_no': int.parse(contactNo.text),
      'firm': firm.text,
      'password': password.text,
    });
  }

  void clicked() {
    if (FormValidation.isTextEditingControllerEmpty(name) ||
        FormValidation.isTextEditingControllerEmpty(enrollmentNumber) ||
        FormValidation.isTextEditingControllerEmpty(emailId) ||
        FormValidation.isTextEditingControllerEmpty(contactNo) ||
        FormValidation.isTextEditingControllerEmpty(firm) ||
        FormValidation.isTextEditingControllerEmpty(password)) {
      FormValidation.showToast('Fill all details in the Form');
    } else {
      storeLawyerData();
      FormValidation.showToast('SignUp Successful');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => (LawyerLogin())));
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
              height: 20,
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
                      "SIGN UP",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text("Lawyer's Details : "),
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
                              controller: name,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(10),
                                          right: Radius.circular(10))),
                                  hintText: "Name",
                                  hintStyle: TextStyle(color: Colors.black54)),
                            ),
                          ),
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
                                  hintText: "Enrollment Number",
                                  hintStyle: TextStyle(color: Colors.black54)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              controller: emailId,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(10),
                                          right: Radius.circular(10))),
                                  hintText: "Email",
                                  hintStyle: TextStyle(color: Colors.black54)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              controller: contactNo,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(10),
                                          right: Radius.circular(10))),
                                  hintText: "Contact Number",
                                  hintStyle: TextStyle(color: Colors.black54)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              controller: firm,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(10),
                                          right: Radius.circular(10))),
                                  hintText: "Firm",
                                  hintStyle: TextStyle(color: Colors.black54)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 10,
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
                                  hintStyle: TextStyle(color: Colors.black54)),
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
                                "SIGN UP",
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
