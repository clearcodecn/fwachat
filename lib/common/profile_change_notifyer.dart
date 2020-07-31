import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:fwachat/model/profile.dart';
import 'package:fwachat/common/global.dart';

class ProfileChangeNotifier extends ChangeNotifier {
  Profile get _profile => Global.profile;

  @override
  void notifyListeners() {
    Global.saveProfile();
    super.notifyListeners();
  }
}
