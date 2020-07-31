import 'package:dio/dio.dart';
import 'login.dart';
import 'package:xml/xml.dart';

class Api {
  static const _baseURL = "https://login.weixin.qq.com";

  static Dio _dio = Dio();

  static Future<String> getUUID() async {
    try {
      Map<String, dynamic> param = Map();
      param["appid"] = "wx782c26e4c19acffb";
      param["func"] = "new";
      Response response =
          await _dio.get("$_baseURL/jslogin", queryParameters: param);

      RegExp exp = new RegExp(
          r'window.QRLogin.code = (\d+); window.QRLogin.uuid = "(\S+?)";');

      Iterable<RegExpMatch> matches = exp.allMatches(response.data);
      if (matches.toList()[0].group(1) == "200") {
        return Future.value(matches.toList()[0].group(2));
      }
      return Future.value("");
    } on Exception catch (e) {
      return Future.value("");
    }
  }

  static String getQrCodeURL(String uuid) {
    String qrURL = "$_baseURL/qrcode/$uuid";
    return qrURL;
  }

  static Future<Response> downloadImage(String url) async {
    Response response = await _dio.get(url);
    return Future.value(response);
  }

  // https://login.wx.qq.com/cgi-bin/mmwebwx-bin/login
  static Future<LoginResponse> login(String uuid) async {
    LoginResponse loginResponse = LoginResponse(LoginStatus.NotScan, "");

    try {
      Map<String, dynamic> param = Map();
      param["tip"] = "1";
      param["uuid"] = uuid;
      param["loginicon"] = true;
      param["r"] = DateTime.now().microsecond;

      var header = Map();
      header["User-Agent"] =
          "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36";

      Response response = await _dio.get(
        "$_baseURL/cgi-bin/mmwebwx-bin/login",
        queryParameters: param,
        options:
            Options(sendTimeout: 600, receiveTimeout: 600, headers: header),
      );
      // 408为未扫码，201为已扫码但未点击登录，200为成功登录
      /**
			 * window.code=200;
			 * window.redirect_uri="https://wx.qq.com/cgi-bin/mmwebwx-bin/webwxnewloginpage?ticket=AQuJ8eKao4A-oP242PEm6AWn@qrticket_0&uuid=wf5b7Sbikg==&lang=zh_CN&scan=1596182824";
			 */
      String resp = response.data;
      print(resp);
      bool hasRedirectURL = resp.contains("http");
      String redirectURL;
      String code;
      if (resp.length > 12) {
        code = resp.substring(12, 15);
        if (hasRedirectURL) {
          int start = resp.indexOf('window.redirect_uri="') +
              'window.redirect_uri="'.length;
          int end = resp.length - 2;
          redirectURL = resp.substring(start, end);
        }
        print("login code=$code,redirect=$redirectURL");
      }
      if (code == "200") {
        loginResponse.status = LoginStatus.Login;
      }
      if (code == "201") {
        loginResponse.status = LoginStatus.Scanned;
      }
      if (redirectURL != "") {
        loginResponse.redirectURL = redirectURL;
      }
      if (loginResponse.status == LoginStatus.Scanned) {
        print(1);
      }
      return Future.value(loginResponse);
    } on Exception catch (e) {
      print(e);
      return loginResponse;
    }
  }

  static Future<String> webWxLoginPage(String url) async {
    Response response;
    try {
      Map<String, String> header = new Map();
      header["User-Agent"] =
          "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36";

      response = await _dio.get(url,
          options: Options(
              headers: header, followRedirects: false, maxRedirects: 0));
      print(response.data);
    } on Exception catch (e) {
      print("exception: $e");
    }

    if (response != null) {
      final doc = XmlDocument.parse(response.data);
      XmlElement el = doc.getElement("error");
      print("ret = ${el.getAttribute("ret")}");
      print("message = ${el.getAttribute("message")}");
      print("skey = ${el.getAttribute("skey")}");
      print("wxsid = ${el.getAttribute("wxsid")}");
      print("wxuin = ${el.getAttribute("wxuin")}");
      print("pass_ticket = ${el.getAttribute("pass_ticket")}");
      print("isgrayscale = ${el.getAttribute("isgrayscale")}");
    }
  }
}
