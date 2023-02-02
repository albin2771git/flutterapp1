import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutterapp1/modules/welcomeScreen.dart';
import 'package:flutterapp1/services/loginService.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController urlCtrl = TextEditingController();
  TextEditingController usernameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  final _storage = FlutterSecureStorage();
  final Authentication authent = Authentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(

                  decoration: InputDecoration(
                      hintText: 'enter url',
                      hintStyle: TextStyle(color: Colors.black)),
                  controller: urlCtrl,
                  validator: (url){
                    if(url==null||url.isEmpty){
                      return 'enter the valid username';
                    }
                  },
                ),
                Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(


                  controller: usernameCtrl,
                  decoration: InputDecoration(
                      hintText: 'enter username',
                      hintStyle: TextStyle(color: Colors.black)),
                  validator: (username){
                    if(username==null||username.isEmpty){
                      return 'enter the valid username';
                    }
                  },
                ),
                Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: passwordCtrl,
                  decoration: InputDecoration(
                      hintText: 'enter password',
                      hintStyle: TextStyle(color: Colors.black)),
                  validator: (password){
                    if(password==null||password.isEmpty){
                      return 'enter the valid username';
                    }
                  },
                ),
                Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () {
                      loginCheck(urlCtrl.text.trim(), usernameCtrl.text.trim(),
                          passwordCtrl.text.trim());
                    },
                    child: Text(
                      "submit",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void loginCheck(
    String url,
    String username,
    String password,
  ) async {

   if(formKey.currentState!.validate()){
     authent.SignInUser(
         BuildContext: context,
         schoolurlvalue: url,
         email: username,
         password: password);
     Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
   }else{
     print('something went wrong');
   }
  }

}
