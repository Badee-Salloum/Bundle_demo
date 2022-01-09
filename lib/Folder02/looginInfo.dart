import 'package:bundle_demo/Folder02/setting_screen.dart';
import 'package:flutter/material.dart';

import '../icomoon_icons.dart';

class LoginInfoScreen extends StatefulWidget {
  const LoginInfoScreen({Key? key}) : super(key: key);

  @override
  _LoginInfoScreenState createState() => _LoginInfoScreenState();
}

class _LoginInfoScreenState extends State<LoginInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              "Login info",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SettingScreen()));
              },
              icon: Icon(
                Icomoon.Logout,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      height: 300,
                      fit: BoxFit.fill,
                      image: AssetImage('assets/Photos/Traffic night.jpg'),
                    ),
                  ),
                ),
                Positioned(
                  child: MaterialButton(
                      enableFeedback: false,
                      disabledColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      height: 51.0,
                      minWidth: 300.0,
                      color: Color(0xff9676FF),
                      child: Text(
                        'Save',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {}),
                  bottom: 10,
                  right: 10,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
