import 'package:flutter/scheduler.dart';

class User {
  static var _cnr;
  static var _description;
  static var _priority;
  static String getCnr() {
    return _cnr;
  }

  static void setCnr(var cnr) {
    _cnr = cnr;
  }

  static String getDescription() {
    return _description;
  }

  static void setDescription(var description) {
    _description = description;
  }

  static String getPriority() {
    return _priority;
  }

  static void setPriority(var priority) {
    _priority = priority;
  }
}
