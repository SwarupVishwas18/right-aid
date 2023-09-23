import 'package:flutter/material.dart';
import 'package:right_aid/case_request.dart';
import 'package:right_aid/case_status.dart';
import 'package:right_aid/file_greivance.dart';
import 'package:right_aid/home.dart';
import 'package:right_aid/inmate_login.dart';
import 'package:right_aid/loading.dart';
import 'package:right_aid/inmate_signup.dart';
import 'package:right_aid/lawyer_signup.dart';
import 'package:right_aid/medical_status.dart';
import 'package:right_aid/seminars_view.dart';
import 'package:right_aid/lawyer_home.dart';
import 'package:right_aid/lawyer_connect.dart';
import 'package:right_aid/current_case.dart';
import 'package:right_aid/view_lawyers.dart';
import 'utilities/fetch_details.dart';
import 'lawyer_login.dart';

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
      // home: const MyHomePage(title: 'Right Aid'),
      home: const SplashScreen(),
    );
  }
}
