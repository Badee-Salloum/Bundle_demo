// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:bundle_demo/Screens_Walaa/signUp/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constant.dart';
import 'package:bundle_demo/Screens_Badee/permission.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String userName;
  late String password = '';
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PermissionSecrren(),
                    ),
                  );
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
