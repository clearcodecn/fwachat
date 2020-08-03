// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wxkey.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WxKey _$WxKeyFromJson(Map<String, dynamic> json) {
  return WxKey(
    json['skey'] as String,
    json['wxsid'] as String,
    json['wxuin'] as String,
    json['passTicket'] as String,
    json['isgrayscale'] as String,
  );
}

Map<String, dynamic> _$WxKeyToJson(WxKey instance) => <String, dynamic>{
      'skey': instance.skey,
      'wxsid': instance.wxsid,
      'wxuin': instance.wxuin,
      'passTicket': instance.passTicket,
      'isgrayscale': instance.isgrayscale,
    };
