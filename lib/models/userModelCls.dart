/// status : "Success"
/// data : {"id":152,"academicYearId":9,"academicYear":"2022-2023","roleId":5,"role":"Principal","token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJZCI6IjE1MiIsIkFjYWRlbWljWWVhcklkIjoiOSIsIkFjYWRlbWljWWVhciI6IjIwMjItMjAyMyIsIlJvbGVJZCI6IjUiLCJ1bmlxdWVfbmFtZSI6IlBSQVlBR0EgUFJBVEhFRVNIIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbW9iaWxlcGhvbmUiOiI4OTIxNjYxMTU1Iiwicm9sZSI6IlBSSU5DSVBBTCIsImFjdG9ydCI6IlBSSU5DSVBBTCIsIm5iZiI6MTY3NTIyMzE3MiwiZXhwIjoxNjc1MjMwMzcyLCJpYXQiOjE2NzUyMjMxNzIsImlzcyI6ImVkaXNhcHAuY29tLmluIiwiYXVkIjoiRWRpc2FwcCBFcnAifQ.bqBQt3mGfwhq9BQ18a2TxRWMqeHy_jo1o00GkwVk2l4","name":"PRAYAGA PRATHEESH","imgUrl":"https://edisapp3storageaccount.blob.core.windows.net/text/9a91e63c-6cb2-4a4b-b8db-841205dfa22967a5a67d-84a3-48db-9dad-0c5bae4dab97.png","designation":"Principal","tempPassword":false,"status":true,"message":"LOGIN_SUCCESS","schoolName":"Eloit Academy, New Delhi","mobileNo":"8921661155","firebaseTopic":"qaedisappnet","otpSendStatus":false,"isTwoFactorAuthenticationEnabled":false}

class UserModelCls {
  UserModelCls(
      {String? status,
      Data? data,
      required int id,
      required int acedemicYearId,
      required int acedemicYear,
      required int roleId,
      required String role,
      required String token,
      required String name,
      required String imgUrl,
      required String designation,
      required bool tempPassword,
      required bool statusv,
      required String message,
      required String schoolName,
      required String mobileNo,
      required String firebaseTopic,
      required bool otpSendStatus,
      required bool isTwoFactorAuthenticationEnabled}) {
    _status = status;
    _data = data;
  }

  UserModelCls.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  String? _status;
  Data? _data;


  String? get status => _status;

  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}

/// id : 152
/// academicYearId : 9
/// academicYear : "2022-2023"
/// roleId : 5
/// role : "Principal"
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJZCI6IjE1MiIsIkFjYWRlbWljWWVhcklkIjoiOSIsIkFjYWRlbWljWWVhciI6IjIwMjItMjAyMyIsIlJvbGVJZCI6IjUiLCJ1bmlxdWVfbmFtZSI6IlBSQVlBR0EgUFJBVEhFRVNIIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbW9iaWxlcGhvbmUiOiI4OTIxNjYxMTU1Iiwicm9sZSI6IlBSSU5DSVBBTCIsImFjdG9ydCI6IlBSSU5DSVBBTCIsIm5iZiI6MTY3NTIyMzE3MiwiZXhwIjoxNjc1MjMwMzcyLCJpYXQiOjE2NzUyMjMxNzIsImlzcyI6ImVkaXNhcHAuY29tLmluIiwiYXVkIjoiRWRpc2FwcCBFcnAifQ.bqBQt3mGfwhq9BQ18a2TxRWMqeHy_jo1o00GkwVk2l4"
/// name : "PRAYAGA PRATHEESH"
/// imgUrl : "https://edisapp3storageaccount.blob.core.windows.net/text/9a91e63c-6cb2-4a4b-b8db-841205dfa22967a5a67d-84a3-48db-9dad-0c5bae4dab97.png"
/// designation : "Principal"
/// tempPassword : false
/// status : true
/// message : "LOGIN_SUCCESS"
/// schoolName : "Eloit Academy, New Delhi"
/// mobileNo : "8921661155"
/// firebaseTopic : "qaedisappnet"
/// otpSendStatus : false
/// isTwoFactorAuthenticationEnabled : false

class Data {
  Data({
    num? id,
    num? academicYearId,
    String? academicYear,
    num? roleId,
    String? role,
    String? token,
    String? name,
    String? imgUrl,
    String? designation,
    bool? tempPassword,
    bool? status,
    String? message,
    String? schoolName,
    String? mobileNo,
    String? firebaseTopic,
    bool? otpSendStatus,
    bool? isTwoFactorAuthenticationEnabled,
  }) {
    _id = id;
    _academicYearId = academicYearId;
    _academicYear = academicYear;
    _roleId = roleId;
    _role = role;
    _token = token;
    _name = name;
    _imgUrl = imgUrl;
    _designation = designation;
    _tempPassword = tempPassword;
    _status = status;
    _message = message;
    _schoolName = schoolName;
    _mobileNo = mobileNo;
    _firebaseTopic = firebaseTopic;
    _otpSendStatus = otpSendStatus;
    _isTwoFactorAuthenticationEnabled = isTwoFactorAuthenticationEnabled;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _academicYearId = json['academicYearId'];
    _academicYear = json['academicYear'];
    _roleId = json['roleId'];
    _role = json['role'];
    _token = json['token'];
    _name = json['name'];
    _imgUrl = json['imgUrl'];
    _designation = json['designation'];
    _tempPassword = json['tempPassword'];
    _status = json['status'];
    _message = json['message'];
    _schoolName = json['schoolName'];
    _mobileNo = json['mobileNo'];
    _firebaseTopic = json['firebaseTopic'];
    _otpSendStatus = json['otpSendStatus'];
    _isTwoFactorAuthenticationEnabled =
        json['isTwoFactorAuthenticationEnabled'];
  }

  num? _id;
  num? _academicYearId;
  String? _academicYear;
  num? _roleId;
  String? _role;
  String? _token;
  String? _name;
  String? _imgUrl;
  String? _designation;
  bool? _tempPassword;
  bool? _status;
  String? _message;
  String? _schoolName;
  String? _mobileNo;
  String? _firebaseTopic;
  bool? _otpSendStatus;
  bool? _isTwoFactorAuthenticationEnabled;

  Data copyWith({
    num? id,
    num? academicYearId,
    String? academicYear,
    num? roleId,
    String? role,
    String? token,
    String? name,
    String? imgUrl,
    String? designation,
    bool? tempPassword,
    bool? status,
    String? message,
    String? schoolName,
    String? mobileNo,
    String? firebaseTopic,
    bool? otpSendStatus,
    bool? isTwoFactorAuthenticationEnabled,
  }) =>
      Data(
        id: id ?? _id,
        academicYearId: academicYearId ?? _academicYearId,
        academicYear: academicYear ?? _academicYear,
        roleId: roleId ?? _roleId,
        role: role ?? _role,
        token: token ?? _token,
        name: name ?? _name,
        imgUrl: imgUrl ?? _imgUrl,
        designation: designation ?? _designation,
        tempPassword: tempPassword ?? _tempPassword,
        status: status ?? _status,
        message: message ?? _message,
        schoolName: schoolName ?? _schoolName,
        mobileNo: mobileNo ?? _mobileNo,
        firebaseTopic: firebaseTopic ?? _firebaseTopic,
        otpSendStatus: otpSendStatus ?? _otpSendStatus,
        isTwoFactorAuthenticationEnabled: isTwoFactorAuthenticationEnabled ??
            _isTwoFactorAuthenticationEnabled,
      );

  num? get id => _id;

  num? get academicYearId => _academicYearId;

  String? get academicYear => _academicYear;

  num? get roleId => _roleId;

  String? get role => _role;

  String? get token => _token;

  String? get name => _name;

  String? get imgUrl => _imgUrl;

  String? get designation => _designation;

  bool? get tempPassword => _tempPassword;

  bool? get status => _status;

  String? get message => _message;

  String? get schoolName => _schoolName;

  String? get mobileNo => _mobileNo;

  String? get firebaseTopic => _firebaseTopic;

  bool? get otpSendStatus => _otpSendStatus;

  bool? get isTwoFactorAuthenticationEnabled =>
      _isTwoFactorAuthenticationEnabled;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['academicYearId'] = _academicYearId;
    map['academicYear'] = _academicYear;
    map['roleId'] = _roleId;
    map['role'] = _role;
    map['token'] = _token;
    map['name'] = _name;
    map['imgUrl'] = _imgUrl;
    map['designation'] = _designation;
    map['tempPassword'] = _tempPassword;
    map['status'] = _status;
    map['message'] = _message;
    map['schoolName'] = _schoolName;
    map['mobileNo'] = _mobileNo;
    map['firebaseTopic'] = _firebaseTopic;
    map['otpSendStatus'] = _otpSendStatus;
    map['isTwoFactorAuthenticationEnabled'] = _isTwoFactorAuthenticationEnabled;
    return map;
  }
}
