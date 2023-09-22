import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:right_aid/firebase_options.dart';
import 'utilities/form_validation.dart';
import 'utilities/user.dart';
import 'utilities/fetch_details.dart';
import 'home.dart';

class InmateLogin extends StatefulWidget {
  const InmateLogin({super.key});

  @override
  State<InmateLogin> createState() => _InmateLoginState();
}

class _InmateLoginState extends State<InmateLogin> {
  late final TextEditingController password;
  late final TextEditingController cnr;
  @override
  void initState() {
    cnr = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    cnr.dispose();
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
    // final inmateDocumentReference =
    //     FirebaseFirestore.instance.collection('inmate').doc();
    final CollectionReference inmateCollection =
        FirebaseFirestore.instance.collection('inmate');
    final QuerySnapshot querySnapshotOne =
        await inmateCollection.where('cnr', isEqualTo: cnr.text).get();
    if (querySnapshotOne.docs.isNotEmpty) {
      final QuerySnapshot querySnapshotTwo = await inmateCollection
          .where('cnr', isEqualTo: cnr.text)
          .where('password', isEqualTo: (password.text))
          .get();

      if (querySnapshotTwo.docs.isNotEmpty) {
        final QuerySnapshot querySnapshotThree = await inmateCollection
            .where('cnr', isEqualTo: cnr.text)
            .where('is_verified', isEqualTo: true)
            .get();
        if (querySnapshotThree.docs.isNotEmpty) {
          FormValidation.showToast('LogIn Successful');
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home()));
        } else {
          //we can add alertbox
          FormValidation.showToast('Verification Pending');
        }
      } else {
        FormValidation.showToast('Incorrect Password');
      }
    } else {
      FormValidation.showToast('CNR not found');
    }
  }

  void clicked() {
    if (FormValidation.isTextEditingControllerEmpty(cnr) ||
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
                      "Login as Inmate",
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
                                "LOGIN",
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
