import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fwachat/model/profile.dart';

class Global {
  static SharedPreferences _preferences;
  static Profile profile = Profile();

  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static void saveProfile() {}
}
