import 'package:flutter/cupertino.dart';

import '../models/userModelCls.dart';

class UserResponse extends ChangeNotifier{
  UserModelCls _userdetails=UserModelCls(
    id:0,
    acedemicYearId:0,
    acedemicYear:0,
    roleId:0,
      role:'',
      token:'',
    name: '',
    imgUrl: '',
    designation: '',
    tempPassword: false,
    statusv: false,
    message: '',
    schoolName: '',
    mobileNo: '',
    firebaseTopic: '',
    otpSendStatus: false,
    isTwoFactorAuthenticationEnabled: false,


  );
  UserModelCls get userdetails=>_userdetails;
  void setUser(Map<String,dynamic>userdetails){
    _userdetails=UserModelCls.fromJson(userdetails);
    notifyListeners();
  }
  void setUserFromModelcls(UserModelCls userdetails){
    _userdetails=userdetails;
    notifyListeners();
  }
}