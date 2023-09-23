import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';
import 'firebase_options.dart';

class MedicalStatus extends StatefulWidget {
  const MedicalStatus({super.key});
  State<MedicalStatus> createState() => _MedicalStatus();
}

class _MedicalStatus extends State<MedicalStatus> {
  Uri pdfLink = Uri(
      scheme: 'https',
      host: 'drive.google.com',
      path: '/file/d/1O7WqQpfrada_z-I_ecidUKcfGJILYQmF/view');

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 247, 247, 237)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          const SizedBox(
            height: 250,
          ),
          const Text(
            "Medical Status",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(children: [
                Row(
                  children: [
                    const Text(
                      "Name : ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: const Text("Swarup Vishwas"),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      "Name : ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: const Text("Swarup Vishwas"),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      "Name : ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: const Text("Swarup Vishwas"),
                    )
                  ],
                )
              ]),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () async {
              await launchUrl(pdfLink);
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 31, 44, 79))),
            child: const Text(
              "Download Report",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
          )
        ]),
      ),
    ));
  }
}
