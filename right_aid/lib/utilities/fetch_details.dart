import 'dart:convert';

import 'package:http/http.dart' as http;

Future<CaseDetails> fetchCaseDetails(String crnNumber) async {
  final response = await http.get(Uri.parse(
      'https://raw.githubusercontent.com/watashi-aizensama/api-case/main/data.json'));

  if (response.statusCode == 200) {
    final cases = CaseDetails.fromJsonList(jsonDecode(response.body));
    final caseDetails =
        cases.firstWhere((cases) => cases.crnNumber == crnNumber);

    if (caseDetails != null) {
      return caseDetails;
    } else {
      throw Exception('Case with CRN number $crnNumber not found');
    }
  } else {
    throw Exception('Failed to fetch case details: ${response.statusCode}');
  }
}

class CaseDetails {
  final String nextHearingDate;
  final String stageOfCase;
  final String coram;
  final String judicialBranch;
  final String state;
  final String district;
  final String petitioner;
  final String respondent;
  final String actsAndSections;
  final String registrationNumber;
  final String registrationDate;
  final String crnNumber;
  final List<String> petitionerAdvocates;
  final List<String> respondentsAdvocates;

  CaseDetails.fromJson(Map<String, dynamic> json)
      : nextHearingDate = json['Next Hearing Date'],
        stageOfCase = json['Stage of Case'],
        coram = json['Coram'],
        judicialBranch = json['Judicial Branch'],
        state = json['State'],
        district = json['District'],
        petitioner = json['petitioner'],
        respondent = json['respondent'],
        actsAndSections = json['actsAndSections'],
        registrationNumber = json['registrationNumber'],
        registrationDate = json['registrationDate'],
        crnNumber = json['CRN Number'],
        petitionerAdvocates = json['petitioner advocates'].cast<String>(),
        respondentsAdvocates = json['respondents advocates'].cast<String>();

  static List<CaseDetails> fromJsonList(List<dynamic> json) {
    return json.map((cases) => CaseDetails.fromJson(cases)).toList();
  }
}
