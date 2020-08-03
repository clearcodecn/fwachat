import 'package:flutter/material.dart';
import 'package:fwachat/api/api.dart';
import 'package:fwachat/api/login.dart';
import 'package:fwachat/model/wxkey.dart';
import 'package:fwachat/common/global.dart';
import 'dart:async';
import 'dart:io';
import 'package:provider/provider.dart';
import 'package:fwachat/common/wxkeyNotifier.dart';

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
  UserNotifier userNotifier;

  @override
  void initState() {
    getUUID().then((value) => waitLogin());
    super.initState();
  }

  Future getUUID() {
    return Api.getUUID().then((value) {
      print("uuid : $value");
      setState(() {
        _qrCodeURL = Api.getQrCodeURL(value);
        uuid = value;
      });
    });
  }

  void onRefresh() {
    setState(() {
      scanned = false;
    });
    getUUID().then((value) {
      waitLogin();
    });
  }

  Future waitLogin() async {
    LoginResponse loginResponse = LoginResponse.Default();
    while (true) {
      loginResponse = await Api.login(uuid);
      if (loginResponse.status == LoginStatus.Scanned) {
        setState(() {
          scanned = true;
        });
        print("scanned");
      }
      if (loginResponse.status == LoginStatus.Login) {
        break;
      }
      if (loginResponse.status == LoginStatus.Scanned) {
        sleep(Duration(seconds: 1));
      }
    }

    print("redirect to ${loginResponse.redirectURL}");
    // 登录获取公共参数

    WxKey wxKey = await Api.webWxLoginPage(loginResponse.redirectURL);
    Provider.of<UserNotifier>(context, listen: false).wxKey = wxKey;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<UserNotifier>(
        builder: (BuildContext context, UserNotifier notifier, Widget child) {
      return Scaffold(
        appBar: AppBar(
          title: Text("登录"),
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                onRefresh();
              },
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
    });
  }
}
