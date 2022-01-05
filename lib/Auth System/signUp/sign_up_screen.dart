// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, implementation_imports

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bundle_demo/Auth%20System/permission.dart';
import 'package:bundle_demo/translations/locale_keys.g.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../login_screen.dart';
import 'widgets.dart';

class SignUpScreen extends StatefulWidget {
  //const LoginScreen({Key? key}) : super(key: key);
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  String countryCode = "+964";
  final MyConnectivity _connectivity = MyConnectivity.instance;
  Map _source = {ConnectivityResult.none: false};

  @override
  void initState() {
    super.initState();
    _connectivity.initialise();
    _connectivity.myStream.listen((source) {
      setState(() => _source = source);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          //"Sign Up",
          LocaleKeys.B03signUpScreen_signup.tr(),
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
                'assets/Photos/Trip-cuate.svg',
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                //"Create new account",
                LocaleKeys.B03signUpScreen_create.tr(),
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 35.0,
              ),
              TextField_SignUp(
                prefix: Icon(
                  Icons.person,
                  color: Color(0xff9676FF),
                ),
                con: _nameController,
                hintText: //'Name',
                    LocaleKeys.B03signUpScreen_name.tr(),
              ),
              SizedBox(
                height: 15,
              ),
              TextField_SignUp(
                prefix: Icon(
                  Icons.account_circle_outlined,
                  color: Color(0xff9676FF),
                ),
                con: _userNameController,
                hintText: //'Username',
                    LocaleKeys.B03signUpScreen_username.tr(),
              ),
              SizedBox(
                height: 15,
              ),
              TextField_SignUp(
                prefix: Icon(
                  Icons.lock,
                  color: Color(0xff9676FF),
                ),
                hideInput: true,
                keyboardType: TextInputType.visiblePassword,
                con: _passwordController,
                hintText: //'Pass code (6-digits)',
                    LocaleKeys.B03signUpScreen_code.tr(),
              ),
              SizedBox(
                height: 15,
              ),
              TextField_SignUp(
                prefix: Expanded(
                  child: SizedBox(
                    width: 150,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.phone,
                            color: Color(0xff9676FF),
                          ),
                        ),
                        CountryCodePicker(
                          initialSelection: 'IQ',
                          onChanged: (value) {
                            countryCode = value.toString();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                hideInput: false,
                keyboardType: TextInputType.phone,
                con: _phoneController,
                hintText: //'Phone number',
                    LocaleKeys.B03signUpScreen_number.tr(),
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
                    //'Sign up',
                    LocaleKeys.B03signUpScreen_signup.tr(),
                    style: TextStyle(fontSize: 16.0, color: Colors.white)),
                onPressed: () async {
                  if (_source.keys.toList()[0] == ConnectivityResult.none) {
                    dialog(
                        context: context,
                        content: 'try again later',
                        text: 'no net',
                        buttonText: 'close');
                  } else if (_nameController.value.text.isEmpty) {
                    dialog(
                        context: context,
                        content: 'please enter your name',
                        text: 'name error',
                        buttonText: 'close');
                  } else if (_userNameController.value.text.isEmpty) {
                    dialog(
                        context: context,
                        content: 'please enter your userName',
                        text: 'userName error',
                        buttonText: 'close');
                  } else if (_userNameController.value.text.contains(' ')) {
                    dialog(
                        context: context,
                        content:
                            'please reenter your userName\ndon\'t use spaces.',
                        text: 'userName error',
                        buttonText: 'close');
                  } else if (_passwordController.value.text.contains(' ') ||
                      _passwordController.value.text.length < 6) {
                    dialog(
                        context: context,
                        content:
                            'please enter your password\ndon\'t use spaces.',
                        text: 'password error',
                        buttonText: 'close');
                  } else if (_phoneController.value.text.isEmpty) {
                    dialog(
                        context: context,
                        content: 'please enter your phoneNumber',
                        text: 'phoneNumber error',
                        buttonText: 'close');
                  } else {
                    print('start');
                    Response res = await post(
                      Uri.parse('http://www.alkatsha.com/api/register'),
                      headers: <String, String>{
                        'Content-Type': 'application/json; charset=UTF-8',
                      },
                      body: jsonEncode(<String, String>{
                        'phone': countryCode + _phoneController.value.text,
                        'password': _passwordController.value.text,
                        'password_confirmation': _passwordController.value.text,
                        'email': _userNameController.value.text,
                        'name': _nameController.value.text,
                      }),
                    );
                    print(res.body);
                    if (res.statusCode == 200) {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      final responseJson = json.decode(res.body);
                      prefs.setBool('email', true);
                      SharedPreferences SavedPrefs =
                          await SharedPreferences.getInstance();
                      SavedPrefs.setString('token', responseJson['token']);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PermissionScreen()));
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => PinCodeScreen(
                      //       name: _nameController.value.text,
                      //       userName: _userNameController.value.text,
                      //       password: _passwordController.value.text,
                      //       phone: countryCode + _phoneController.value.text,
                      //     ),
                      //   ),
                      // );
                    } else {
                      dialog(
                          context: context,
                          content: 'error',
                          text: 'please try again',
                          buttonText: 'close');
                    }
                  }
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
                    LocaleKeys.B03signUpScreen_noaccount.tr(),
                    style: TextStyle(fontSize: 12),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text(
                      //'Log in',
                      LocaleKeys.B04loginScreen_login.tr(),
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
}

class MyConnectivity {
  MyConnectivity._();

  static final _instance = MyConnectivity._();
  static MyConnectivity get instance => _instance;
  final _connectivity = Connectivity();
  final _controller = StreamController.broadcast();
  Stream get myStream => _controller.stream;

  void initialise() async {
    ConnectivityResult result = await _connectivity.checkConnectivity();
    _checkStatus(result);
    _connectivity.onConnectivityChanged.listen((result) {
      _checkStatus(result);
    });
  }

  void _checkStatus(ConnectivityResult result) async {
    bool isOnline = false;
    try {
      final result = await InternetAddress.lookup('google.com');
      isOnline = result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      isOnline = false;
    }
    _controller.sink.add({result: isOnline});
  }

  void disposeStream() => _controller.close();
}
