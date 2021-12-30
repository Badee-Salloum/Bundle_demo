// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, implementation_imports

import 'signUp/sign_up_screen.dart';
import 'package:bundle_demo/translations/locale_keys.g.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'constant.dart';
import 'permission.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String userName;
  late String password = '';
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          //"Login",
          LocaleKeys.B04loginScreen_login.tr(),
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/Photos/Curious-amico.svg',
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                //"Login to continue",
                LocaleKeys.B04loginScreen_Logintocontinue.tr(),
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 35.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    //Do something with the user input.
                    userName = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: //'Username',
                        LocaleKeys.B03signUpScreen_username.tr(),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color(0xff9676FF),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  obscureText: true,
                  onChanged: (vla) {
                    setState(() {
                      password = vla;
                    });
                  },
                  controller: _passwordController,
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: //'Pass code (6-digits)',
                        LocaleKeys.B03signUpScreen_code.tr(),
                    suffixIcon: GestureDetector(
                        child: Icon(
                          Icons.close,
                          color: password != '' ? Colors.grey : Colors.white,
                        ),
                        onTap: () {
                          setState(() {
                            _passwordController.clear();
                            password = '';
                          });
                        }),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xff9676FF),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              MaterialButton(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                height: 51.0,
                minWidth: 300.0,
                color: Color(0xff9676FF),
                child: Text(
                    //'Login',
                    LocaleKeys.B04loginScreen_login.tr(),
                    style: TextStyle(fontSize: 16.0, color: Colors.white)),
                onPressed: () async {
                  try {
                    final authCar = await _auth.signInWithEmailAndPassword(
                        email: '$userName@fake.sy', password: password);
                    //after the login REST api call && response code ==200
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.setBool('email', true);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PermissionSecrren(),
                      ),
                    );
                  } catch (e) {
                    String mes = getMessageFromErrorCode(e.toString());
                    dialog(
                        context: context,
                        content: mes,
                        text: 'log in error',
                        buttonText: 'close');
                  }
                },
              ),
              SizedBox(
                height: 15,
              ),
              MaterialButton(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                height: 51.0,
                minWidth: 300.0,
                color: Color(0xff9676FF),
                child: Text(
                  //'Login',
                    LocaleKeys.B04loginScreen_login.tr(),
                    style: TextStyle(fontSize: 16.0, color: Colors.white)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PermissionSecrren(),),);
                },
              ),

              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    //'Don\'t have an account ?',
                    LocaleKeys.B04loginScreen_noaccount.tr(),
                    style: TextStyle(fontSize: 12),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text(
                      //'Sign up',
                      LocaleKeys.B03signUpScreen_signup.tr(),
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff9676FF),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

String getMessageFromErrorCode(String error) {
  switch (error) {
    case "ERROR_EMAIL_ALREADY_IN_USE":
    case "account-exists-with-different-credential":
    case "email-already-in-use":
      return "Email already used. Go to login page.";
    case "ERROR_WRONG_PASSWORD":
    case "wrong-password":
      return "Wrong email/password combination.";
    case "ERROR_USER_NOT_FOUND":
    case "user-not-found":
      return "No user found with this email.";
    case "ERROR_USER_DISABLED":
    case "user-disabled":
      return "User disabled.";
    case "ERROR_TOO_MANY_REQUESTS":
      return "Too many requests to log into this account.";
    case "ERROR_OPERATION_NOT_ALLOWED":
    case "operation-not-allowed":
      return "Server error, please try again later.";
    case "ERROR_INVALID_EMAIL":
    case "invalid-email":
      return "Email address is invalid.";
    default:
      return "Login failed. Please try again.";
  }
}

void dialog(
    {required BuildContext context,
    required String text,
    required String content,
    required String buttonText}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(text),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(buttonText),
          ),
        ],
      );
    },
  );
}
