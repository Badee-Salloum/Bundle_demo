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
            TextField(
              keyboardType: TextInputType.name,
              textAlign: TextAlign.center,
              onChanged: (value) {
                //Do something with the user input.
                name = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Name',
                icon: Icon(
                  Icons.mode_edit_outline,
                  color: Color(0xff7656a9),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                //Do something with the user input.
                userName = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Pass code (6-digits)',
                icon: Icon(
                  Icons.account_circle,
                  color: Color(0xff7656a9),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                //Do something with the user input.
                password = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Pass code (6-digits)',
                icon: Icon(
                  Icons.lock,
                  color: Color(0xff7656a9),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (value) {
                //Do something with the user input.
                phoneNumber = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Phone number',
                icon: Icon(
                  Icons.call,
                  color: Color(0xff7656a9),
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
              color: Color(0xff7656a9),
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
                    'Long in',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff7656a9),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}