import 'package:flutter/material.dart';
import 'package:fwachat/ui/login.dart';
import 'package:fwachat/common/global.dart';
import 'package:fwachat/ui/home.dart';
import 'package:provider/provider.dart';
import 'package:fwachat/common/wxkeyNotifier.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Global.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserNotifier(),
        ),
      ],
      child: new MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<UserNotifier>(context);
    return MaterialApp(
      title: "Wechat",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: context.watch<UserNotifier>().isLogin ? Home() : LoginPage(),
    );
  }
}
