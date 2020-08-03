import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fwachat/model/wxkey.dart';
import 'dart:convert';

const String _wxKey = "wxkey";

class Global {
  static SharedPreferences _sp;
  static WxKey wxKey;

  static Future init() async {
    _sp = await SharedPreferences.getInstance();
    initWxKey();
  }

  static initWxKey() {
    String data = _sp.getString(_wxKey);

    print("wxKey: $data");
    if (data != null && data != "") {
      WxKey key = WxKey.fromJson(jsonDecode(data));
      if (!key.isEmpty()) {
        wxKey = key;

        print("init wxKey: $wxKey");
      }
    }
  }

  static saveWxKey() async {
    print("save wx key ${jsonEncode(wxKey.toJson())}");

    _sp.setString(_wxKey, jsonEncode(wxKey.toJson()));
  }
}
