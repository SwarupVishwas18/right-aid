import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'utilities/form_validation.dart';
import 'firebase_options.dart';

class InmateSignup extends StatefulWidget {
  const InmateSignup({super.key});

  @override
  State<InmateSignup> createState() => _InmateSignupState();
}

class _InmateSignupState extends State<InmateSignup> {
  late final TextEditingController name;
  late final TextEditingController gender;
  late final TextEditingController age;
  late final TextEditingController cnr;
  late final TextEditingController pid;
  late final TextEditingController handlerName;
  late final TextEditingController phoneNo;
  late final TextEditingController emailId;
  late final TextEditingController relation;
  late final TextEditingController password;

  void storeInmateData() async {
    try {
      await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform);
      print('Initialized');
    } catch (e) {
      print('Error initializing Firebase: $e');
    }
    final inmateDocumentReference =
        FirebaseFirestore.instance.collection('inmate').doc();
    await inmateDocumentReference.set({
      'name': name.text,
      'gender': gender.text,
      'age': int.parse(age.text),
      'cnr': cnr.text,
      'pid': int.parse(pid.text),
      'handler_name': handlerName.text,
      'phone_no': int.parse(phoneNo.text),
      'email_id': emailId.text,
      'relation': relation.text,
      'password': password.text,
      'is_verified': false,
    });
  }

  void clicked() {
    if (FormValidation.isTextEditingControllerEmpty(name) ||
        FormValidation.isTextEditingControllerEmpty(gender) ||
        FormValidation.isTextEditingControllerEmpty(age) ||
        FormValidation.isTextEditingControllerEmpty(cnr) ||
        FormValidation.isTextEditingControllerEmpty(pid) ||
        FormValidation.isTextEditingControllerEmpty(handlerName) ||
        FormValidation.isTextEditingControllerEmpty(phoneNo) ||
        FormValidation.isTextEditingControllerEmpty(emailId) ||
        FormValidation.isTextEditingControllerEmpty(relation) ||
        FormValidation.isTextEditingControllerEmpty(password)) {
      FormValidation.showToast('Fill all details in the Form');
    } else {
      storeInmateData();
    }
  }

  @override
  void initState() {
    name = TextEditingController();
    gender = TextEditingController();
    age = TextEditingController();
    cnr = TextEditingController();
    pid = TextEditingController();
    handlerName = TextEditingController();
    phoneNo = TextEditingController();
    emailId = TextEditingController();
    relation = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    name.dispose();
    gender.dispose();
    age.dispose();
    cnr.dispose();
    pid.dispose();
    handlerName.dispose();
    phoneNo.dispose();
    emailId.dispose();
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
                    const Text("Detainee's Details : "),
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
                                  hintStyle: TextStyle(color: Colors.black12)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              controller: gender,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(10),
                                          right: Radius.circular(10))),
                                  hintText: "Gender",
                                  hintStyle: TextStyle(color: Colors.black12)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              controller: age,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(10),
                                          right: Radius.circular(10))),
                                  hintText: "Age",
                                  hintStyle: TextStyle(color: Colors.black12)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              controller: cnr,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(10),
                                          right: Radius.circular(10))),
                                  hintText: "CNR",
                                  hintStyle: TextStyle(color: Colors.black12)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              controller: pid,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(10),
                                          right: Radius.circular(10))),
                                  hintText: "PID",
                                  hintStyle: TextStyle(color: Colors.black12)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Handler's Details"),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              controller: handlerName,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(10),
                                          right: Radius.circular(10))),
                                  hintText: "Name",
                                  hintStyle: TextStyle(color: Colors.black12)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              controller: phoneNo,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(10),
                                          right: Radius.circular(10))),
                                  hintText: "Phone No",
                                  hintStyle: TextStyle(color: Colors.black12)),
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
                                  hintText: "Email Id",
                                  hintStyle: TextStyle(color: Colors.black12)),
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
                              decoration: InputDecoration(
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
