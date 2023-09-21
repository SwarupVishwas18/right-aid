import 'package:flutter/material.dart';
import 'package:right_aid/home.dart';
import 'package:right_aid/inmate_login.dart';
import 'package:right_aid/loading.dart';
import 'package:right_aid/inmate_signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Right Aid',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void inmateCall() {
    print("Inmate Call!!");
  }

  void jailorCall() {
    print("Jailor Call!!");
  }

  void lawyerCall() {
    print("Lawyer Call!!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/homebg.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              const SizedBox(
                height: 250,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                    child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(242, 248, 247, 238),
                    border: Border.all(
                        width: 1.0, color: const Color.fromARGB(255, 0, 0, 0)),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "LOGIN AS",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<
                                        Color>(
                                    const Color.fromARGB(255, 249, 244, 225))),
                            onPressed: inmateCall,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                      image: AssetImage(
                                          "assets/img/Prisoner.png")),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("Inmate",
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                ],
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<
                                        Color>(
                                    const Color.fromARGB(255, 249, 244, 225))),
                            onPressed: lawyerCall,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                      image:
                                          AssetImage("assets/img/probono.png")),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("Pro-Bono Lawyer",
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                ],
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<
                                        Color>(
                                    const Color.fromARGB(255, 249, 244, 225))),
                            onPressed: jailorCall,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                      image:
                                          AssetImage("assets/img/jailor.png")),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("Prison Authority",
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                ],
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                )),
              )
            ],
          )),
    );
  }
}
