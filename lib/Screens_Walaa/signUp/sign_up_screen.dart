// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'dart:io';
import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'widgets.dart';
import '../login_screen.dart';
import 'package:country_code_picker/country_code_picker.dart';
// import 'package:bundle_demo/Screens_Badee/permission.dart';
import 'package:bundle_demo/Screens_Badee/pin_code.dart';

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
          "Sign Up",
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
                "Create new account",
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
                hintText: 'Name',
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
                hintText: 'Username',
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
                hintText: 'Pass code (6-digits)',
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
                hintText: 'Phone number',
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
                child: Text('Sign up',
                    style: TextStyle(fontSize: 16.0, color: Colors.white)),
                onPressed: () {
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PinCodeScreen(
                          name: _nameController.value.text,
                          userName: _userNameController.value.text,
                          password: _passwordController.value.text,
                          phone: countryCode + _phoneController.value.text,
                        ),
                      ),
                    );
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
                    'Don\'t have an account ?',
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
                      'Log in',
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
