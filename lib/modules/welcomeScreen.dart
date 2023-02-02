import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutterapp1/services/loginService.dart';

class WelcomeScreen extends StatefulWidget {

   WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    getDetails();
    super.initState();
  }
  var Auth=Authentication();

  final Authentication auth = Authentication();

  final _storage= const FlutterSecureStorage();

  var img;
  var name;

  @override
  Widget build(BuildContext context) {



    return Scaffold(appBar: AppBar(),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('welcome ${img['name']}'),
          SizedBox(height: 15,),
          CircleAvatar(
            minRadius: 25,
            maxRadius: 35
            ,
            backgroundImage:NetworkImage(img['imgUrl'],),),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            auth.logOut(context);
          }, child: Text('sign Out'))
        ],
      ),),
    );

  }
  void getDetails()async{
    var store = await _storage.read(key: 'userDetails');
    img = jsonDecode(store!);

print(img['imgUrl']);
  }
}
