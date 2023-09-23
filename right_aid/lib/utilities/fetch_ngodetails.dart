import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List> getNGOs(String stateName) async {
  final response = await http.get(Uri.parse(
      'https://raw.githubusercontent.com/watashi-aizensama/api-case/main/ngos.json'));

  if (response.statusCode == 200) {
    Map data = jsonDecode(response.body);
    return data[stateName];
  } else {
    throw Exception('Failed to load NGOs');
  }
}
