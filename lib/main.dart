import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp1/modules/SplashScreen.dart';
import 'package:flutterapp1/providerServices/ResponseData.dart';
import 'package:provider/provider.dart';

import 'modules/HomeScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context)=>UserResponse())
    ],
    child: MaterialApp(
      home: SplashScreen(),
    ),
  ));
}
