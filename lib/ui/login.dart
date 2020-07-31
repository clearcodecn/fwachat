import 'package:flutter/material.dart';
import 'package:fwachat/api/api.dart';
import 'package:fwachat/api/login.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart';
import 'dart:io';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginBody();
  }
}

class LoginBody extends StatefulWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  String _qrCodeURL;
  String uuid;
  bool scanned = false;
  bool isrefreshing = false;

  @override
  void initState() {
    getUUID().then((value) => waitLogin());

    super.initState();
  }

  Future getUUID() {
    Api.getUUID().then((value) {
      setState(() {
        _qrCodeURL = Api.getQrCodeURL(value);
        uuid = value;
      });
    });
  }

  void onRefresh() {
    setState(() {
      isrefreshing = true;
    });
    getUUID().then((value) {
      setState(() {
        isrefreshing = false;
      });
      waitLogin();
    });
  }

  Future waitLogin() async {
    LoginResponse loginResponse = LoginResponse.Default();
    while (true) {
      if (isrefreshing) {
        return Future.value("");
      }
      loginResponse = await Api.login(uuid);
      if (isrefreshing) {
        return Future.value("");
      }

      if (loginResponse.status == LoginStatus.Scanned) {
        setState(() {
          scanned = true;
        });
        print("scanned");
      }
      if (loginResponse.status == LoginStatus.Login) {
        break;
      }
    }

    print("redirect to ${loginResponse.redirectURL}");
    // 登录获取公共参数

    await Api.webWxLoginPage(loginResponse.redirectURL);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录"),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Card(
              child: _qrCodeURL == null
                  ? Image.asset("images/qr.png")
                  : Image.network(_qrCodeURL),
              elevation: 5.0,
              borderOnForeground: true,
            ),
            Center(
                child: Container(
                    margin: EdgeInsets.only(top: 20.0),
                    decoration: BoxDecoration(
                      color: scanned
                          ? Colors.green
                          : Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: FlatButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                scanned ? Icons.done : Icons.qr_code,
                                color: Colors.white,
                              ),
                              label: Text(
                                scanned ? "已扫描，请确定登录" : "请扫描二维码",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              )),
                        ),
                      ],
                    ))),
          ],
        ),
        padding: EdgeInsets.all(16.0),
      ),
    );
  }
}
