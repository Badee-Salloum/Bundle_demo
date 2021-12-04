// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'constant.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  //const LoginScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late String name;
  late String userName;
  late String password;
  late String phoneNumber;
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  keyboardType: TextInputType.name,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                    name = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Name',
                    prefix: SvgPicture.asset(
                      'assets/Icons/name.svg',
                      allowDrawingOutsideViewBox: true,
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
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                    userName = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Username',
                    prefixIcon: SvgPicture.asset(
                      'assets/Icons/account.svg',
                      color: Color(0xff9676FF),
                      width: 24,
                      height: 24,
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
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                    password = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Pass code (6-digits)',
                    //prefixIconConstraints: BoxConstraints(),
                    prefixIcon: SizedBox(
                      height: 24,
                      width: 24,
                      child: SvgPicture.asset(
                        'assets/Icons/pass_code.svg',
                        color: Color(0xff9676FF),
                      ),
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
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                    phoneNumber = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    prefixIcon: SvgPicture.asset(
                      'assets/Icons/contact_phone-24px.svg',
                      //color: Color(0xff9676FF),
                      height: 20,
                      width: 20,
                    ),
                    hintText: 'Phone number',
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                height: 51.0,
                minWidth: 300.0,
                color: Color(0xff9676FF),
                child: Text('Login',
                    style: TextStyle(fontSize: 16.0, color: Colors.white)),
                onPressed: () {
//          setState(() {
//            _isNeedHelp = true;
//          });
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
                      'Sign Up',
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
