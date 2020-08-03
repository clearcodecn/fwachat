class InitResponse {
  BaseResponse _baseResponse;
  int _count;
  List<ContactList> _contactList;
  SyncKey _syncKey;
  User _user;
  String _chatSet;
  String _sKey;
  int _clientVersion;
  int _systemTime;
  int _grayScale;
  int _inviteStartCount;
  int _mPSubscribeMsgCount;
  List<MPSubscribeMsgList> _mPSubscribeMsgList;
  int _clickReportInterval;

  InitResponse(
      {BaseResponse baseResponse,
      int count,
      List<ContactList> contactList,
      SyncKey syncKey,
      User user,
      String chatSet,
      String sKey,
      int clientVersion,
      int systemTime,
      int grayScale,
      int inviteStartCount,
      int mPSubscribeMsgCount,
      List<MPSubscribeMsgList> mPSubscribeMsgList,
      int clickReportInterval}) {
    this._baseResponse = baseResponse;
    this._count = count;
    this._contactList = contactList;
    this._syncKey = syncKey;
    this._user = user;
    this._chatSet = chatSet;
    this._sKey = sKey;
    this._clientVersion = clientVersion;
    this._systemTime = systemTime;
    this._grayScale = grayScale;
    this._inviteStartCount = inviteStartCount;
    this._mPSubscribeMsgCount = mPSubscribeMsgCount;
    this._mPSubscribeMsgList = mPSubscribeMsgList;
    this._clickReportInterval = clickReportInterval;
  }

  BaseResponse get baseResponse => _baseResponse;

  set baseResponse(BaseResponse baseResponse) => _baseResponse = baseResponse;

  int get count => _count;

  set count(int count) => _count = count;

  List<ContactList> get contactList => _contactList;

  set contactList(List<ContactList> contactList) => _contactList = contactList;

  SyncKey get syncKey => _syncKey;

  set syncKey(SyncKey syncKey) => _syncKey = syncKey;

  User get user => _user;

  set user(User user) => _user = user;

  String get chatSet => _chatSet;

  set chatSet(String chatSet) => _chatSet = chatSet;

  String get sKey => _sKey;

  set sKey(String sKey) => _sKey = sKey;

  int get clientVersion => _clientVersion;

  set clientVersion(int clientVersion) => _clientVersion = clientVersion;

  int get systemTime => _systemTime;

  set systemTime(int systemTime) => _systemTime = systemTime;

  int get grayScale => _grayScale;

  set grayScale(int grayScale) => _grayScale = grayScale;

  int get inviteStartCount => _inviteStartCount;

  set inviteStartCount(int inviteStartCount) =>
      _inviteStartCount = inviteStartCount;

  int get mPSubscribeMsgCount => _mPSubscribeMsgCount;

  set mPSubscribeMsgCount(int mPSubscribeMsgCount) =>
      _mPSubscribeMsgCount = mPSubscribeMsgCount;

  List<MPSubscribeMsgList> get mPSubscribeMsgList => _mPSubscribeMsgList;

  set mPSubscribeMsgList(List<MPSubscribeMsgList> mPSubscribeMsgList) =>
      _mPSubscribeMsgList = mPSubscribeMsgList;

  int get clickReportInterval => _clickReportInterval;

  set clickReportInterval(int clickReportInterval) =>
      _clickReportInterval = clickReportInterval;

  InitResponse.fromJson(Map<String, dynamic> json) {
    _baseResponse = json['BaseResponse'] != null
        ? new BaseResponse.fromJson(json['BaseResponse'])
        : null;
    _count = json['Count'];
    if (json['ContactList'] != null) {
      _contactList = new List<ContactList>();
      json['ContactList'].forEach((v) {
        _contactList.add(new ContactList.fromJson(v));
      });
    }
    _syncKey =
        json['SyncKey'] != null ? new SyncKey.fromJson(json['SyncKey']) : null;
    _user = json['User'] != null ? new User.fromJson(json['User']) : null;
    _chatSet = json['ChatSet'];
    _sKey = json['SKey'];
    _clientVersion = json['ClientVersion'];
    _systemTime = json['SystemTime'];
    _grayScale = json['GrayScale'];
    _inviteStartCount = json['InviteStartCount'];
    _mPSubscribeMsgCount = json['MPSubscribeMsgCount'];
    if (json['MPSubscribeMsgList'] != null) {
      _mPSubscribeMsgList = new List<MPSubscribeMsgList>();
      json['MPSubscribeMsgList'].forEach((v) {
        _mPSubscribeMsgList.add(new MPSubscribeMsgList.fromJson(v));
      });
    }
    _clickReportInterval = json['ClickReportInterval'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._baseResponse != null) {
      data['BaseResponse'] = this._baseResponse.toJson();
    }
    data['Count'] = this._count;
    if (this._contactList != null) {
      data['ContactList'] = this._contactList.map((v) => v.toJson()).toList();
    }
    if (this._syncKey != null) {
      data['SyncKey'] = this._syncKey.toJson();
    }
    if (this._user != null) {
      data['User'] = this._user.toJson();
    }
    data['ChatSet'] = this._chatSet;
    data['SKey'] = this._sKey;
    data['ClientVersion'] = this._clientVersion;
    data['SystemTime'] = this._systemTime;
    data['GrayScale'] = this._grayScale;
    data['InviteStartCount'] = this._inviteStartCount;
    data['MPSubscribeMsgCount'] = this._mPSubscribeMsgCount;
    if (this._mPSubscribeMsgList != null) {
      data['MPSubscribeMsgList'] =
          this._mPSubscribeMsgList.map((v) => v.toJson()).toList();
    }
    data['ClickReportInterval'] = this._clickReportInterval;
    return data;
  }
}

class BaseResponse {
  int _ret;
  String _errMsg;

  BaseResponse({int ret, String errMsg}) {
    this._ret = ret;
    this._errMsg = errMsg;
  }

  int get ret => _ret;

  set ret(int ret) => _ret = ret;

  String get errMsg => _errMsg;

  set errMsg(String errMsg) => _errMsg = errMsg;

  BaseResponse.fromJson(Map<String, dynamic> json) {
    _ret = json['Ret'];
    _errMsg = json['ErrMsg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Ret'] = this._ret;
    data['ErrMsg'] = this._errMsg;
    return data;
  }
}

class ContactList {
  int _uin;
  String _userName;
  String _nickName;
  String _headImgUrl;
  int _contactFlag;
  int _memberCount;
  List<MemberList> _memberList;
  String _remarkName;
  int _hideInputBarFlag;
  int _sex;
  String _signature;
  int _verifyFlag;
  int _ownerUin;
  String _pYInitial;
  String _pYQuanPin;
  String _remarkPYInitial;
  String _remarkPYQuanPin;
  int _starFriend;
  int _appAccountFlag;
  int _statues;
  int _attrStatus;
  String _province;
  String _city;
  String _alias;
  int _snsFlag;
  int _uniFriend;
  String _displayName;
  int _chatRoomId;
  String _keyWord;
  String _encryChatRoomId;
  int _isOwner;

  ContactList(
      {int uin,
      String userName,
      String nickName,
      String headImgUrl,
      int contactFlag,
      int memberCount,
      List<MemberList> memberList,
      String remarkName,
      int hideInputBarFlag,
      int sex,
      String signature,
      int verifyFlag,
      int ownerUin,
      String pYInitial,
      String pYQuanPin,
      String remarkPYInitial,
      String remarkPYQuanPin,
      int starFriend,
      int appAccountFlag,
      int statues,
      int attrStatus,
      String province,
      String city,
      String alias,
      int snsFlag,
      int uniFriend,
      String displayName,
      int chatRoomId,
      String keyWord,
      String encryChatRoomId,
      int isOwner}) {
    this._uin = uin;
    this._userName = userName;
    this._nickName = nickName;
    this._headImgUrl = headImgUrl;
    this._contactFlag = contactFlag;
    this._memberCount = memberCount;
    this._memberList = memberList;
    this._remarkName = remarkName;
    this._hideInputBarFlag = hideInputBarFlag;
    this._sex = sex;
    this._signature = signature;
    this._verifyFlag = verifyFlag;
    this._ownerUin = ownerUin;
    this._pYInitial = pYInitial;
    this._pYQuanPin = pYQuanPin;
    this._remarkPYInitial = remarkPYInitial;
    this._remarkPYQuanPin = remarkPYQuanPin;
    this._starFriend = starFriend;
    this._appAccountFlag = appAccountFlag;
    this._statues = statues;
    this._attrStatus = attrStatus;
    this._province = province;
    this._city = city;
    this._alias = alias;
    this._snsFlag = snsFlag;
    this._uniFriend = uniFriend;
    this._displayName = displayName;
    this._chatRoomId = chatRoomId;
    this._keyWord = keyWord;
    this._encryChatRoomId = encryChatRoomId;
    this._isOwner = isOwner;
  }

  int get uin => _uin;

  set uin(int uin) => _uin = uin;

  String get userName => _userName;

  set userName(String userName) => _userName = userName;

  String get nickName => _nickName;

  set nickName(String nickName) => _nickName = nickName;

  String get headImgUrl => _headImgUrl;

  set headImgUrl(String headImgUrl) => _headImgUrl = headImgUrl;

  int get contactFlag => _contactFlag;

  set contactFlag(int contactFlag) => _contactFlag = contactFlag;

  int get memberCount => _memberCount;

  set memberCount(int memberCount) => _memberCount = memberCount;

  List<MemberList> get memberList => _memberList;

  set memberList(List<MemberList> memberList) => _memberList = memberList;

  String get remarkName => _remarkName;

  set remarkName(String remarkName) => _remarkName = remarkName;

  int get hideInputBarFlag => _hideInputBarFlag;

  set hideInputBarFlag(int hideInputBarFlag) =>
      _hideInputBarFlag = hideInputBarFlag;

  int get sex => _sex;

  set sex(int sex) => _sex = sex;

  String get signature => _signature;

  set signature(String signature) => _signature = signature;

  int get verifyFlag => _verifyFlag;

  set verifyFlag(int verifyFlag) => _verifyFlag = verifyFlag;

  int get ownerUin => _ownerUin;

  set ownerUin(int ownerUin) => _ownerUin = ownerUin;

  String get pYInitial => _pYInitial;

  set pYInitial(String pYInitial) => _pYInitial = pYInitial;

  String get pYQuanPin => _pYQuanPin;

  set pYQuanPin(String pYQuanPin) => _pYQuanPin = pYQuanPin;

  String get remarkPYInitial => _remarkPYInitial;

  set remarkPYInitial(String remarkPYInitial) =>
      _remarkPYInitial = remarkPYInitial;

  String get remarkPYQuanPin => _remarkPYQuanPin;

  set remarkPYQuanPin(String remarkPYQuanPin) =>
      _remarkPYQuanPin = remarkPYQuanPin;

  int get starFriend => _starFriend;

  set starFriend(int starFriend) => _starFriend = starFriend;

  int get appAccountFlag => _appAccountFlag;

  set appAccountFlag(int appAccountFlag) => _appAccountFlag = appAccountFlag;

  int get statues => _statues;

  set statues(int statues) => _statues = statues;

  int get attrStatus => _attrStatus;

  set attrStatus(int attrStatus) => _attrStatus = attrStatus;

  String get province => _province;

  set province(String province) => _province = province;

  String get city => _city;

  set city(String city) => _city = city;

  String get alias => _alias;

  set alias(String alias) => _alias = alias;

  int get snsFlag => _snsFlag;

  set snsFlag(int snsFlag) => _snsFlag = snsFlag;

  int get uniFriend => _uniFriend;

  set uniFriend(int uniFriend) => _uniFriend = uniFriend;

  String get displayName => _displayName;

  set displayName(String displayName) => _displayName = displayName;

  int get chatRoomId => _chatRoomId;

  set chatRoomId(int chatRoomId) => _chatRoomId = chatRoomId;

  String get keyWord => _keyWord;

  set keyWord(String keyWord) => _keyWord = keyWord;

  String get encryChatRoomId => _encryChatRoomId;

  set encryChatRoomId(String encryChatRoomId) =>
      _encryChatRoomId = encryChatRoomId;

  int get isOwner => _isOwner;

  set isOwner(int isOwner) => _isOwner = isOwner;

  ContactList.fromJson(Map<String, dynamic> json) {
    _uin = json['Uin'];
    _userName = json['UserName'];
    _nickName = json['NickName'];
    _headImgUrl = json['HeadImgUrl'];
    _contactFlag = json['ContactFlag'];
    _memberCount = json['MemberCount'];
    if (json['MemberList'] != null) {
      _memberList = new List<MemberList>();
      json['MemberList'].forEach((v) {
        _memberList.add(new MemberList.fromJson(v));
      });
    }
    _remarkName = json['RemarkName'];
    _hideInputBarFlag = json['HideInputBarFlag'];
    _sex = json['Sex'];
    _signature = json['Signature'];
    _verifyFlag = json['VerifyFlag'];
    _ownerUin = json['OwnerUin'];
    _pYInitial = json['PYInitial'];
    _pYQuanPin = json['PYQuanPin'];
    _remarkPYInitial = json['RemarkPYInitial'];
    _remarkPYQuanPin = json['RemarkPYQuanPin'];
    _starFriend = json['StarFriend'];
    _appAccountFlag = json['AppAccountFlag'];
    _statues = json['Statues'];
    _attrStatus = json['AttrStatus'];
    _province = json['Province'];
    _city = json['City'];
    _alias = json['Alias'];
    _snsFlag = json['SnsFlag'];
    _uniFriend = json['UniFriend'];
    _displayName = json['DisplayName'];
    _chatRoomId = json['ChatRoomId'];
    _keyWord = json['KeyWord'];
    _encryChatRoomId = json['EncryChatRoomId'];
    _isOwner = json['IsOwner'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Uin'] = this._uin;
    data['UserName'] = this._userName;
    data['NickName'] = this._nickName;
    data['HeadImgUrl'] = this._headImgUrl;
    data['ContactFlag'] = this._contactFlag;
    data['MemberCount'] = this._memberCount;
    if (this._memberList != null) {
      data['MemberList'] = this._memberList.map((v) => v.toJson()).toList();
    }
    data['RemarkName'] = this._remarkName;
    data['HideInputBarFlag'] = this._hideInputBarFlag;
    data['Sex'] = this._sex;
    data['Signature'] = this._signature;
    data['VerifyFlag'] = this._verifyFlag;
    data['OwnerUin'] = this._ownerUin;
    data['PYInitial'] = this._pYInitial;
    data['PYQuanPin'] = this._pYQuanPin;
    data['RemarkPYInitial'] = this._remarkPYInitial;
    data['RemarkPYQuanPin'] = this._remarkPYQuanPin;
    data['StarFriend'] = this._starFriend;
    data['AppAccountFlag'] = this._appAccountFlag;
    data['Statues'] = this._statues;
    data['AttrStatus'] = this._attrStatus;
    data['Province'] = this._province;
    data['City'] = this._city;
    data['Alias'] = this._alias;
    data['SnsFlag'] = this._snsFlag;
    data['UniFriend'] = this._uniFriend;
    data['DisplayName'] = this._displayName;
    data['ChatRoomId'] = this._chatRoomId;
    data['KeyWord'] = this._keyWord;
    data['EncryChatRoomId'] = this._encryChatRoomId;
    data['IsOwner'] = this._isOwner;
    return data;
  }
}

class MemberList {
  int _uin;
  String _userName;
  String _nickName;
  int _attrStatus;
  String _pYInitial;
  String _pYQuanPin;
  String _remarkPYInitial;
  String _remarkPYQuanPin;
  int _memberStatus;
  String _displayName;
  String _keyWord;

  MemberList(
      {int uin,
      String userName,
      String nickName,
      int attrStatus,
      String pYInitial,
      String pYQuanPin,
      String remarkPYInitial,
      String remarkPYQuanPin,
      int memberStatus,
      String displayName,
      String keyWord}) {
    this._uin = uin;
    this._userName = userName;
    this._nickName = nickName;
    this._attrStatus = attrStatus;
    this._pYInitial = pYInitial;
    this._pYQuanPin = pYQuanPin;
    this._remarkPYInitial = remarkPYInitial;
    this._remarkPYQuanPin = remarkPYQuanPin;
    this._memberStatus = memberStatus;
    this._displayName = displayName;
    this._keyWord = keyWord;
  }

  int get uin => _uin;

  set uin(int uin) => _uin = uin;

  String get userName => _userName;

  set userName(String userName) => _userName = userName;

  String get nickName => _nickName;

  set nickName(String nickName) => _nickName = nickName;

  int get attrStatus => _attrStatus;

  set attrStatus(int attrStatus) => _attrStatus = attrStatus;

  String get pYInitial => _pYInitial;

  set pYInitial(String pYInitial) => _pYInitial = pYInitial;

  String get pYQuanPin => _pYQuanPin;

  set pYQuanPin(String pYQuanPin) => _pYQuanPin = pYQuanPin;

  String get remarkPYInitial => _remarkPYInitial;

  set remarkPYInitial(String remarkPYInitial) =>
      _remarkPYInitial = remarkPYInitial;

  String get remarkPYQuanPin => _remarkPYQuanPin;

  set remarkPYQuanPin(String remarkPYQuanPin) =>
      _remarkPYQuanPin = remarkPYQuanPin;

  int get memberStatus => _memberStatus;

  set memberStatus(int memberStatus) => _memberStatus = memberStatus;

  String get displayName => _displayName;

  set displayName(String displayName) => _displayName = displayName;

  String get keyWord => _keyWord;

  set keyWord(String keyWord) => _keyWord = keyWord;

  MemberList.fromJson(Map<String, dynamic> json) {
    _uin = json['Uin'];
    _userName = json['UserName'];
    _nickName = json['NickName'];
    _attrStatus = json['AttrStatus'];
    _pYInitial = json['PYInitial'];
    _pYQuanPin = json['PYQuanPin'];
    _remarkPYInitial = json['RemarkPYInitial'];
    _remarkPYQuanPin = json['RemarkPYQuanPin'];
    _memberStatus = json['MemberStatus'];
    _displayName = json['DisplayName'];
    _keyWord = json['KeyWord'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Uin'] = this._uin;
    data['UserName'] = this._userName;
    data['NickName'] = this._nickName;
    data['AttrStatus'] = this._attrStatus;
    data['PYInitial'] = this._pYInitial;
    data['PYQuanPin'] = this._pYQuanPin;
    data['RemarkPYInitial'] = this._remarkPYInitial;
    data['RemarkPYQuanPin'] = this._remarkPYQuanPin;
    data['MemberStatus'] = this._memberStatus;
    data['DisplayName'] = this._displayName;
    data['KeyWord'] = this._keyWord;
    return data;
  }
}

class SyncKey {
  int _count;
  List<SyncKeyList> _list;

  SyncKey({int count, List<SyncKeyList> list}) {
    this._count = count;
    this._list = list;
  }

  int get count => _count;

  set count(int count) => _count = count;

  List<SyncKeyList> get list => _list;

  set list(List<SyncKeyList> list) => _list = list;

  SyncKey.fromJson(Map<String, dynamic> json) {
    _count = json['Count'];
    if (json['List'] != null) {
      _list = new List<SyncKeyList>();
      json['List'].forEach((v) {
        _list.add(new SyncKeyList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Count'] = this._count;
    if (this._list != null) {
      data['List'] = this._list.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SyncKeyList {
  int _key;
  int _val;

  List({int key, int val}) {
    this._key = key;
    this._val = val;
  }

  int get key => _key;

  set key(int key) => _key = key;

  int get val => _val;

  set val(int val) => _val = val;

  SyncKeyList.fromJson(Map<String, dynamic> json) {
    _key = json['Key'];
    _val = json['Val'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Key'] = this._key;
    data['Val'] = this._val;
    return data;
  }
}

class User {
  int _uin;
  String _userName;
  String _nickName;
  String _headImgUrl;
  String _remarkName;
  String _pYInitial;
  String _pYQuanPin;
  String _remarkPYInitial;
  String _remarkPYQuanPin;
  int _hideInputBarFlag;
  int _starFriend;
  int _sex;
  String _signature;
  int _appAccountFlag;
  int _verifyFlag;
  int _contactFlag;
  int _webWxPluginSwitch;
  int _headImgFlag;
  int _snsFlag;

  User(
      {int uin,
      String userName,
      String nickName,
      String headImgUrl,
      String remarkName,
      String pYInitial,
      String pYQuanPin,
      String remarkPYInitial,
      String remarkPYQuanPin,
      int hideInputBarFlag,
      int starFriend,
      int sex,
      String signature,
      int appAccountFlag,
      int verifyFlag,
      int contactFlag,
      int webWxPluginSwitch,
      int headImgFlag,
      int snsFlag}) {
    this._uin = uin;
    this._userName = userName;
    this._nickName = nickName;
    this._headImgUrl = headImgUrl;
    this._remarkName = remarkName;
    this._pYInitial = pYInitial;
    this._pYQuanPin = pYQuanPin;
    this._remarkPYInitial = remarkPYInitial;
    this._remarkPYQuanPin = remarkPYQuanPin;
    this._hideInputBarFlag = hideInputBarFlag;
    this._starFriend = starFriend;
    this._sex = sex;
    this._signature = signature;
    this._appAccountFlag = appAccountFlag;
    this._verifyFlag = verifyFlag;
    this._contactFlag = contactFlag;
    this._webWxPluginSwitch = webWxPluginSwitch;
    this._headImgFlag = headImgFlag;
    this._snsFlag = snsFlag;
  }

  int get uin => _uin;

  set uin(int uin) => _uin = uin;

  String get userName => _userName;

  set userName(String userName) => _userName = userName;

  String get nickName => _nickName;

  set nickName(String nickName) => _nickName = nickName;

  String get headImgUrl => _headImgUrl;

  set headImgUrl(String headImgUrl) => _headImgUrl = headImgUrl;

  String get remarkName => _remarkName;

  set remarkName(String remarkName) => _remarkName = remarkName;

  String get pYInitial => _pYInitial;

  set pYInitial(String pYInitial) => _pYInitial = pYInitial;

  String get pYQuanPin => _pYQuanPin;

  set pYQuanPin(String pYQuanPin) => _pYQuanPin = pYQuanPin;

  String get remarkPYInitial => _remarkPYInitial;

  set remarkPYInitial(String remarkPYInitial) =>
      _remarkPYInitial = remarkPYInitial;

  String get remarkPYQuanPin => _remarkPYQuanPin;

  set remarkPYQuanPin(String remarkPYQuanPin) =>
      _remarkPYQuanPin = remarkPYQuanPin;

  int get hideInputBarFlag => _hideInputBarFlag;

  set hideInputBarFlag(int hideInputBarFlag) =>
      _hideInputBarFlag = hideInputBarFlag;

  int get starFriend => _starFriend;

  set starFriend(int starFriend) => _starFriend = starFriend;

  int get sex => _sex;

  set sex(int sex) => _sex = sex;

  String get signature => _signature;

  set signature(String signature) => _signature = signature;

  int get appAccountFlag => _appAccountFlag;

  set appAccountFlag(int appAccountFlag) => _appAccountFlag = appAccountFlag;

  int get verifyFlag => _verifyFlag;

  set verifyFlag(int verifyFlag) => _verifyFlag = verifyFlag;

  int get contactFlag => _contactFlag;

  set contactFlag(int contactFlag) => _contactFlag = contactFlag;

  int get webWxPluginSwitch => _webWxPluginSwitch;

  set webWxPluginSwitch(int webWxPluginSwitch) =>
      _webWxPluginSwitch = webWxPluginSwitch;

  int get headImgFlag => _headImgFlag;

  set headImgFlag(int headImgFlag) => _headImgFlag = headImgFlag;

  int get snsFlag => _snsFlag;

  set snsFlag(int snsFlag) => _snsFlag = snsFlag;

  User.fromJson(Map<String, dynamic> json) {
    _uin = json['Uin'];
    _userName = json['UserName'];
    _nickName = json['NickName'];
    _headImgUrl = json['HeadImgUrl'];
    _remarkName = json['RemarkName'];
    _pYInitial = json['PYInitial'];
    _pYQuanPin = json['PYQuanPin'];
    _remarkPYInitial = json['RemarkPYInitial'];
    _remarkPYQuanPin = json['RemarkPYQuanPin'];
    _hideInputBarFlag = json['HideInputBarFlag'];
    _starFriend = json['StarFriend'];
    _sex = json['Sex'];
    _signature = json['Signature'];
    _appAccountFlag = json['AppAccountFlag'];
    _verifyFlag = json['VerifyFlag'];
    _contactFlag = json['ContactFlag'];
    _webWxPluginSwitch = json['WebWxPluginSwitch'];
    _headImgFlag = json['HeadImgFlag'];
    _snsFlag = json['SnsFlag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Uin'] = this._uin;
    data['UserName'] = this._userName;
    data['NickName'] = this._nickName;
    data['HeadImgUrl'] = this._headImgUrl;
    data['RemarkName'] = this._remarkName;
    data['PYInitial'] = this._pYInitial;
    data['PYQuanPin'] = this._pYQuanPin;
    data['RemarkPYInitial'] = this._remarkPYInitial;
    data['RemarkPYQuanPin'] = this._remarkPYQuanPin;
    data['HideInputBarFlag'] = this._hideInputBarFlag;
    data['StarFriend'] = this._starFriend;
    data['Sex'] = this._sex;
    data['Signature'] = this._signature;
    data['AppAccountFlag'] = this._appAccountFlag;
    data['VerifyFlag'] = this._verifyFlag;
    data['ContactFlag'] = this._contactFlag;
    data['WebWxPluginSwitch'] = this._webWxPluginSwitch;
    data['HeadImgFlag'] = this._headImgFlag;
    data['SnsFlag'] = this._snsFlag;
    return data;
  }
}

class MPSubscribeMsgList {
  String _userName;
  int _mPArticleCount;
  List<MPArticleList> _mPArticleList;
  int _time;
  String _nickName;

  MPSubscribeMsgList(
      {String userName,
      int mPArticleCount,
      List<MPArticleList> mPArticleList,
      int time,
      String nickName}) {
    this._userName = userName;
    this._mPArticleCount = mPArticleCount;
    this._mPArticleList = mPArticleList;
    this._time = time;
    this._nickName = nickName;
  }

  String get userName => _userName;

  set userName(String userName) => _userName = userName;

  int get mPArticleCount => _mPArticleCount;

  set mPArticleCount(int mPArticleCount) => _mPArticleCount = mPArticleCount;

  List<MPArticleList> get mPArticleList => _mPArticleList;

  set mPArticleList(List<MPArticleList> mPArticleList) =>
      _mPArticleList = mPArticleList;

  int get time => _time;

  set time(int time) => _time = time;

  String get nickName => _nickName;

  set nickName(String nickName) => _nickName = nickName;

  MPSubscribeMsgList.fromJson(Map<String, dynamic> json) {
    _userName = json['UserName'];
    _mPArticleCount = json['MPArticleCount'];
    if (json['MPArticleList'] != null) {
      _mPArticleList = new List<MPArticleList>();
      json['MPArticleList'].forEach((v) {
        _mPArticleList.add(new MPArticleList.fromJson(v));
      });
    }
    _time = json['Time'];
    _nickName = json['NickName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UserName'] = this._userName;
    data['MPArticleCount'] = this._mPArticleCount;
    if (this._mPArticleList != null) {
      data['MPArticleList'] =
          this._mPArticleList.map((v) => v.toJson()).toList();
    }
    data['Time'] = this._time;
    data['NickName'] = this._nickName;
    return data;
  }
}

class MPArticleList {
  String _title;
  String _digest;
  String _cover;
  String _url;

  MPArticleList({String title, String digest, String cover, String url}) {
    this._title = title;
    this._digest = digest;
    this._cover = cover;
    this._url = url;
  }

  String get title => _title;

  set title(String title) => _title = title;

  String get digest => _digest;

  set digest(String digest) => _digest = digest;

  String get cover => _cover;

  set cover(String cover) => _cover = cover;

  String get url => _url;

  set url(String url) => _url = url;

  MPArticleList.fromJson(Map<String, dynamic> json) {
    _title = json['Title'];
    _digest = json['Digest'];
    _cover = json['Cover'];
    _url = json['Url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Title'] = this._title;
    data['Digest'] = this._digest;
    data['Cover'] = this._cover;
    data['Url'] = this._url;
    return data;
  }
}
