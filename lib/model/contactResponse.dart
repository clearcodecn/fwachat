class ContactResponse {
  BaseResponse baseResponse;
  int memberCount;
  List<MemberList> memberList;
  int seq;

  ContactResponse(
      {this.baseResponse, this.memberCount, this.memberList, this.seq});

  ContactResponse.fromJson(Map<String, dynamic> json) {
    baseResponse = json['BaseResponse'] != null
        ? new BaseResponse.fromJson(json['BaseResponse'])
        : null;
    memberCount = json['MemberCount'];
    if (json['MemberList'] != null) {
      memberList = new List<MemberList>();
      json['MemberList'].forEach((v) {
        memberList.add(new MemberList.fromJson(v));
      });
    }
    seq = json['Seq'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.baseResponse != null) {
      data['BaseResponse'] = this.baseResponse.toJson();
    }
    data['MemberCount'] = this.memberCount;
    if (this.memberList != null) {
      data['MemberList'] = this.memberList.map((v) => v.toJson()).toList();
    }
    data['Seq'] = this.seq;
    return data;
  }
}

class BaseResponse {
  int ret;
  String errMsg;

  BaseResponse({this.ret, this.errMsg});

  BaseResponse.fromJson(Map<String, dynamic> json) {
    ret = json['Ret'];
    errMsg = json['ErrMsg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Ret'] = this.ret;
    data['ErrMsg'] = this.errMsg;
    return data;
  }
}

class MemberList {
  int uin;
  String userName;
  String nickName;
  String headImgUrl;
  int contactFlag;
  int memberCount;
  List<MemberList> memberList;
  String remarkName;
  int hideInputBarFlag;
  int sex;
  String signature;
  int verifyFlag;
  int ownerUin;
  String pYInitial;
  String pYQuanPin;
  String remarkPYInitial;
  String remarkPYQuanPin;
  int starFriend;
  int appAccountFlag;
  int statues;
  int attrStatus;
  String province;
  String city;
  String alias;
  int snsFlag;
  int uniFriend;
  String displayName;
  int chatRoomId;
  String keyWord;
  String encryChatRoomId;
  int isOwner;

  MemberList(
      {this.uin,
      this.userName,
      this.nickName,
      this.headImgUrl,
      this.contactFlag,
      this.memberCount,
      this.memberList,
      this.remarkName,
      this.hideInputBarFlag,
      this.sex,
      this.signature,
      this.verifyFlag,
      this.ownerUin,
      this.pYInitial,
      this.pYQuanPin,
      this.remarkPYInitial,
      this.remarkPYQuanPin,
      this.starFriend,
      this.appAccountFlag,
      this.statues,
      this.attrStatus,
      this.province,
      this.city,
      this.alias,
      this.snsFlag,
      this.uniFriend,
      this.displayName,
      this.chatRoomId,
      this.keyWord,
      this.encryChatRoomId,
      this.isOwner});

  MemberList.fromJson(Map<String, dynamic> json) {
    uin = json['Uin'];
    userName = json['UserName'];
    nickName = json['NickName'];
    headImgUrl = json['HeadImgUrl'];
    contactFlag = json['ContactFlag'];
    memberCount = json['MemberCount'];
    if (json['MemberList'] != null) {
      memberList = new List<MemberList>();
      json['MemberList'].forEach((v) {
        memberList.add(new MemberList.fromJson(v));
      });
    }
    remarkName = json['RemarkName'];
    hideInputBarFlag = json['HideInputBarFlag'];
    sex = json['Sex'];
    signature = json['Signature'];
    verifyFlag = json['VerifyFlag'];
    ownerUin = json['OwnerUin'];
    pYInitial = json['PYInitial'];
    pYQuanPin = json['PYQuanPin'];
    remarkPYInitial = json['RemarkPYInitial'];
    remarkPYQuanPin = json['RemarkPYQuanPin'];
    starFriend = json['StarFriend'];
    appAccountFlag = json['AppAccountFlag'];
    statues = json['Statues'];
    attrStatus = json['AttrStatus'];
    province = json['Province'];
    city = json['City'];
    alias = json['Alias'];
    snsFlag = json['SnsFlag'];
    uniFriend = json['UniFriend'];
    displayName = json['DisplayName'];
    chatRoomId = json['ChatRoomId'];
    keyWord = json['KeyWord'];
    encryChatRoomId = json['EncryChatRoomId'];
    isOwner = json['IsOwner'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Uin'] = this.uin;
    data['UserName'] = this.userName;
    data['NickName'] = this.nickName;
    data['HeadImgUrl'] = this.headImgUrl;
    data['ContactFlag'] = this.contactFlag;
    data['MemberCount'] = this.memberCount;
    if (this.memberList != null) {
      data['MemberList'] = this.memberList.map((v) => v.toJson()).toList();
    }
    data['RemarkName'] = this.remarkName;
    data['HideInputBarFlag'] = this.hideInputBarFlag;
    data['Sex'] = this.sex;
    data['Signature'] = this.signature;
    data['VerifyFlag'] = this.verifyFlag;
    data['OwnerUin'] = this.ownerUin;
    data['PYInitial'] = this.pYInitial;
    data['PYQuanPin'] = this.pYQuanPin;
    data['RemarkPYInitial'] = this.remarkPYInitial;
    data['RemarkPYQuanPin'] = this.remarkPYQuanPin;
    data['StarFriend'] = this.starFriend;
    data['AppAccountFlag'] = this.appAccountFlag;
    data['Statues'] = this.statues;
    data['AttrStatus'] = this.attrStatus;
    data['Province'] = this.province;
    data['City'] = this.city;
    data['Alias'] = this.alias;
    data['SnsFlag'] = this.snsFlag;
    data['UniFriend'] = this.uniFriend;
    data['DisplayName'] = this.displayName;
    data['ChatRoomId'] = this.chatRoomId;
    data['KeyWord'] = this.keyWord;
    data['EncryChatRoomId'] = this.encryChatRoomId;
    data['IsOwner'] = this.isOwner;
    return data;
  }
}
