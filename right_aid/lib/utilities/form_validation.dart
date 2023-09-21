import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FormValidation {
  static bool isTextEditingControllerEmpty(TextEditingController controller) {
    return controller.text.isEmpty;
  }

  static void showToast() {
    Fluttertoast.showToast(
      msg: 'Fill all details in the Form',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
