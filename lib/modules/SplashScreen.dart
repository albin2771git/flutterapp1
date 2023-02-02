import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutterapp1/modules/HomeScreen.dart';
import 'package:flutterapp1/modules/mainScreen.dart';
import 'package:flutterapp1/modules/welcomeScreen.dart';

import '../services/loginService.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _storage=FlutterSecureStorage();
  final Auth=Authentication();

  //--------checking the _storage contains the value


  @override
  void initState() {
    // TODO: implement initState
   Timer(Duration(milliseconds: 1000),(){
     isAlreadyLoggedIn();
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator(),),
    );
  }
  Future<void> isAlreadyLoggedIn()async{
 var _schoolurl=await _storage.read(key: 'schoolurl');
 var _username=await _storage.read(key: 'username');
 var _password=await _storage.read(key: 'password');

 //----check
    if(_schoolurl!=null&&_username!=null&&_password!=null){
      Auth.SignInUser(BuildContext:context,
          schoolurlvalue: _schoolurl,
          email: _username,
          password:_password);
    }else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    }

  }
}
