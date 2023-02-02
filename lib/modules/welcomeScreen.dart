import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutterapp1/services/loginService.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final Authentication auth = Authentication();
  final _storage = const FlutterSecureStorage();
  var img;

  void getDetails() async {
    var store = await _storage.read(key: 'userDetails');
    setState(() {
      if (store != null) {
        img = jsonDecode(store);
      }
    });
  }

  @override
  void initState() {
    getDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            img == null ? const Text(" ") : Text('welcome ${img['name']}'),
            SizedBox(
              height: 15,
            ),
            img == null
                ? const SizedBox()
                : CircleAvatar(
                    minRadius: 25,
                    maxRadius: 35,
                    backgroundImage: NetworkImage(
                      img['imgUrl'],
                    ),
                  ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  auth.logOut(context);
                },
                child: Text('sign Out'))
          ],
        ),
      ),
    );
  }
}
