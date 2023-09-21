import 'package:flutter/material.dart';

class InmateSignup extends StatelessWidget {
  const InmateSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
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
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
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
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
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
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
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
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
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
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
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
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
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
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
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
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
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
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
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
                              onPressed: () => {},
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
