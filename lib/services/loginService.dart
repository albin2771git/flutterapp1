import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutterapp1/constants/constants.dart';
import 'package:flutterapp1/modules/HomeScreen.dart';
import 'package:flutterapp1/modules/mainScreen.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../modules/welcomeScreen.dart';
import '../providerServices/ResponseData.dart';

class Authentication {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  var decodeddata;

  BuildContext get context => context;

  void SignInUser(
      {required BuildContext,
      required String schoolurlvalue,
      required String email,
      required String password}) async {
    //var userProvider=Provider.of<UserResponse>(context,listen:false);
    try {
      var urlvalue = Uri.https('$schoolurlvalue', '/api/v2/principal/auth/login');
      print(urlvalue);
      http.Response responsedata = await http.post(urlvalue,
          headers: {"Content-Type": "Application/json"},
          body: jsonEncode({"username": email, "password": password}));

      //  print('response data $responsedata.body');

       decodeddata = jsonDecode(responsedata.body);
      print(decodeddata);

      if (decodeddata['status'] == 'Success') {
        await _storage.write(key: 'username', value: email);
        await _storage.write(key: 'password', value: password);
        await _storage.write(key: 'schoolurl', value: schoolurlvalue);
        await _storage.write(key: 'token', value: decodeddata['data']['token']);
        await _storage.write(key: 'userDetails', value: jsonEncode(decodeddata['data']));
        Navigator.pushReplacement(BuildContext, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
      }
    } catch (e) {
      print("exception is $e");
    }
  }
  //-------------remove
  void logOut(BuildContext context) async {
    var shlurl= await _storage.read(key: 'schoolurl');
    print(shlurl);
    try{
      await _storage.deleteAll();

      // print(decodeddata);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    }catch(e){
      print("something error $e");
    }
  }
}
