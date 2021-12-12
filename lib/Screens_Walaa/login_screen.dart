// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:bundle_demo/Screens_Walaa/signUp/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'constant.dart';
import 'package:bundle_demo/Screens_Badee/permission.dart';
import 'dart:io';
import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String userName;
  late String password = '';
  final MyConnectivity _connectivity = MyConnectivity.instance;
  Map _source = {ConnectivityResult.none: false};
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _connectivity.initialise();
    _connectivity.myStream.listen((source) {
      setState(() => _source = source);
    });
  }

  @override
  void dispose() {
    _connectivity.disposeStream();
    super.dispose();
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
          "Login",
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
                "Login to continue",
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
                    hintText: 'Username',
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
                    hintText: 'Pass code (6-digits)',
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
                child: Text('Login',
                    style: TextStyle(fontSize: 16.0, color: Colors.white)),
                onPressed: () async {
                  _connectivity.myStream.listen((source) {
                    setState(() => _source = source);
                  });
                  if (_source.keys.toList()[0] == ConnectivityResult.none) {
                    dialog(
                        context: context,
                        content: 'try again later',
                        text: 'no net',
                        buttonText: 'close');
                  } else {
                    try {
                      final authCar = await _auth.signInWithEmailAndPassword(
                          email: '$userName@fake.sy', password: password);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PermissionSecrren(),
                        ),
                      );
                    } catch (e) {
                      dialog(
                          context: context,
                          content: 'check your username and password',
                          text: 'log in error',
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
                    'Don\'t have an account ?',
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
                      'Sign up',
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
