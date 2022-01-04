// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, implementation_imports

import 'package:bundle_demo/Folder02/setting_screen.dart';
import 'package:bundle_demo/translations/locale_keys.g.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PermissionScreen extends StatefulWidget {
  @override
  _PermissionScreenState createState() => _PermissionScreenState();
}

class _PermissionScreenState extends State<PermissionScreen> {
  // savePref(bool isLogin) async {
  //   SharedPreferences Preferences1 = await SharedPreferences.getInstance();
  //   Preferences1.setBool("isLogin", isLogin);
  //   print(Preferences1.getBool('isLogin'));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          //'Permissions',
          LocaleKeys.B06permissionsScreen_permissions.tr(),
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
            child: Text(
              //'Skip',
              LocaleKeys.B01onBoarding_skip.tr(),
              style: TextStyle(color: Color(0xff9676FF), fontSize: 15),
            ),
            onPressed: () {},
          ),
        ],
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
              SizedBox(
                height: 20.0,
              ),
              SvgPicture.asset('assets/Photos/Private data-rafiki (1).svg'),
              SizedBox(
                height: 15.0,
              ),
              Text(
                //'Please allow us to access these services for Bundle use'
                LocaleKeys.B06permissionsScreen_allow.tr(),
              ),
              SizedBox(
                height: 15.0,
              ),
              MaterialButton(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                height: 51.0,
                minWidth: 300.0,
                color: Color(0xff9676FF),
                child: Text(
                    //'Permissions',
                    LocaleKeys.B06permissionsScreen_permissions.tr(),
                    style: TextStyle(fontSize: 16.0, color: Colors.white)),
                onPressed: () async {},
              ),
              SizedBox(
                height: 15.0,
              ),
              MaterialButton(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Color(0xff9676FF))),
                height: 51.0,
                minWidth: 300.0,
                color: Colors.white,
                child: Text(
                    //'Skip',
                    LocaleKeys.B01onBoarding_skip.tr(),
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xff9676FF),
                    )),
                onPressed: () async {},
              ),
              SizedBox(
                height: 45.0,
              ),
              // MaterialButton(
              //   elevation: 0,
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(30.0),
              //       side: BorderSide(color: Color(0xff9676FF))),
              //   height: 51.0,
              //   minWidth: 300.0,
              //   color: Colors.white,
              //   child: Text('test  log out',
              //       style: TextStyle(
              //         fontSize: 16.0,
              //         color: Color(0xff9676FF),
              //       )),
              //   onPressed: () async {
              //     SharedPreferences prefs =
              //         await SharedPreferences.getInstance();
              //     prefs.setBool('email', false);
              //     Navigator.pushReplacement(
              //       context,
              //       MaterialPageRoute(builder: (context) => WelcomeScreen()),
              //     );
              //   },
              // ),
              // SizedBox(
              //   height: 15.0,
              // ),
              MaterialButton(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Color(0xff9676FF))),
                height: 51.0,
                minWidth: 300.0,
                color: Colors.white,
                child: Text('test Setting',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xff9676FF),
                    )),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SettingScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
