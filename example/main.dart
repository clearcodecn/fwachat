import 'package:fwachat/api/api.dart';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:fwachat/api/login.dart';

void main() async {
	String uuid = await Api.getUUID();
	String url = Api.getQrCodeURL(uuid);
	print(url);
	LoginResponse loginResponse = LoginResponse.Default();
	while (true) {
		loginResponse = await Api.login(uuid);
		sleep(Duration(seconds: 2));
//		if (loginResponse.status == LoginStatus.Scanned) {
//			print("scanned");
//		}
//		if (loginResponse.status == LoginStatus.Login) {
//			break;
//		}
	}
}