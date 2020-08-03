import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wxkey.g.dart';

@JsonSerializable()
class WxKey {
  String skey;

  String wxsid;

  String wxuin;

  String passTicket;

  String isgrayscale;

  WxKey(this.skey, this.wxsid, this.wxuin, this.passTicket, this.isgrayscale);

  bool _isEmpty(String s) {
    if (s == null) {
      return true;
    }
    return s == "";
  }

  bool isEmpty() {
    if (_isEmpty(skey) ||
        _isEmpty(wxsid) ||
        _isEmpty(wxuin) ||
        _isEmpty(passTicket) ||
        _isEmpty(isgrayscale)) {
      return true;
    }
    return false;
  }

  factory WxKey.fromJson(Map<String, dynamic> json) => _$WxKeyFromJson(json);

  Map<String, dynamic> toJson() => _$WxKeyToJson(this);
}
