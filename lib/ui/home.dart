import 'package:flutter/material.dart';
import 'package:fwachat/api/api.dart';
import 'package:fwachat/common/global.dart';
import 'package:provider/provider.dart';
import 'package:fwachat/common/wxkeyNotifier.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<BottomBar> _bottomBars = new List();
  List<BottomNavigationBarItem> _items = new List();
  List<Widget> _pages = new List();

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    _bottomBars.add(BottomBar("微信", Icons.home));
    _bottomBars.add(BottomBar("通讯录", Icons.contact_page));
    _bottomBars.add(BottomBar("发现", Icons.explore_rounded));
    _bottomBars.add(BottomBar("我", Icons.home));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wechat'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              context.read<UserNotifier>().logout();
            },
          )
        ],
      ),
      body: Container(
        child: FlatButton.icon(
            onPressed: () async {
              await Api.getContacts(Global.wxKey);
            },
            icon: Icon(Icons.search),
            label: Text("hello")),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              "微信",
              style: TextStyle(
                color: Theme.of(context).primaryColorDark,
              ),
            ),
            backgroundColor: Theme.of(context).primaryColorDark,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              "通讯录",
              style: TextStyle(
                color: Theme.of(context).primaryColorDark,
              ),
            ),
            backgroundColor: Theme.of(context).primaryColorDark,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              "发现",
              style: TextStyle(
                color: Theme.of(context).primaryColorDark,
              ),
            ),
            backgroundColor: Theme.of(context).primaryColorDark,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              "我",
              style: TextStyle(
                color: Theme.of(context).primaryColorDark,
              ),
            ),
            backgroundColor: Theme.of(context).primaryColorDark,
          ),
        ],
        elevation: 1,
        backgroundColor: Colors.grey[300],
        fixedColor: Colors.green[600],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class BottomBar {
  String title;

  IconData icon;

  BottomBar(this.title, this.icon);
}
