import 'package:flutter/material.dart';
import 'package:right_aid/view_lawyers.dart';
import 'utilities/user.dart';

class LawyerConnect extends StatefulWidget {
  const LawyerConnect({super.key});
  @override
  State<LawyerConnect> createState() => _LawyerConnect();
}

class _LawyerConnect extends State<LawyerConnect> {
  late final TextEditingController description;
  late final TextEditingController priority;
  @override
  void initState() {
    description = TextEditingController();
    priority = TextEditingController();
    super.initState();
  }

  void clicked() {
    User.setDescription(description.text);
    User.setPriority(priority.text);
  }

  @override
  void dispose() {
    description.dispose();
    priority.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/connectbg.png"),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                "Add Description You Want ",
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: description,
                maxLines: 8,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.0),
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(10),
                            right: Radius.circular(10))),
                    hintText: "Enter your tasks description",
                    hintStyle: TextStyle(color: Colors.black12)),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: priority,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.0),
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(10),
                            right: Radius.circular(10))),
                    hintText: "Priority",
                    hintStyle: TextStyle(color: Colors.black12)),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () => {
                  clicked(),
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ViewLawyers(),
                      ))
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 31, 44, 79))),
                child: const Text(
                  "NEXT",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ]),
          )),
    );
  }
}
