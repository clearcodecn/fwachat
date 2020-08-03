import 'package:flutter/foundation.dart';
import 'global.dart';
import 'package:fwachat/model/wxkey.dart';
import 'package:provider/provider.dart';

class UserNotifier extends ChangeNotifier {
  WxKey get wxKey => Global.wxKey;

  bool get isLogin => wxKey != null;

  set wxKey(WxKey wxKey) {
    if (wxKey == null) {
      return;
    }
    if (!wxKey.isEmpty()) {
      Global.wxKey = wxKey;
      Global.saveWxKey();
      notifyListeners();
    }
  }
}
