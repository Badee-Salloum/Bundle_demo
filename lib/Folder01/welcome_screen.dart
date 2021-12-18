// ignore_for_file: prefer_const_constructors

import 'permission.dart';
import 'login_screen.dart';
import 'signUp/sign_up_screen.dart';
import 'package:bundle_demo/translations/locale_keys.g.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  // var login = null;
  // savePref1(var isLogin) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setBool("email", isLogin);
  //   print(prefs.getBool('email'));
  // }
  //
  // getPref1() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var email = prefs.getString('email');
  //   print(email);
  //   email == null
  //       ? Navigator.push(
  //           context,
  //           MaterialPageRoute(builder: (context) => WelcomeScreen()),
  //         )
  //       : Navigator.push(
  //           context,
  //           MaterialPageRoute(builder: (context) => PermissionSecrren()),
  //         );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder: (context) => IconButton(
            color: Colors.black,
            icon: Icon(
              Icons.language,
              size: 35,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // padding: EdgeInsets.all(20),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff9676FF),
              ),
              child: ListTile(
                title: Text(
                  LocaleKeys.B02welcomeScreen_language.tr(),
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(
                  Icons.language,
                  size: 32,
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              title: Text('English'),
              leading: SvgPicture.asset(
                'assets/Icons/us.svg',
                height: 30,
                width: 40,
                //fit: BoxFit.fitWidth,
              ),
              onTap: () async {
                await context.setLocale(Locale('en'));
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Spanish'),
              leading: SvgPicture.asset(
                'assets/Icons/es.svg',
                height: 30,
                width: 40,
                //fit: BoxFit.fitWidth,
              ),
              onTap: () async {
                await context.setLocale(Locale('es'));
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/Photos/Moment to remember-rafiki.svg',
                fit: BoxFit.fitWidth,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      //"Welcome to",
                      LocaleKeys.B02welcomeScreen_welcome.tr(),
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      "Bundle",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    Text(
                      //"Fast , Safe and fun moment sharing",
                      LocaleKeys.B02welcomeScreen_fast.tr(),
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        // Add This
                        Expanded(
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            height: 51.0,
                            minWidth: 200,
                            color: Color(0xff9676FF),
                            child: Text(
                                //'Create account',
                                LocaleKeys.B02welcomeScreen_create.tr(),
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.white)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpScreen()),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            height: 51.0,
                            color: Colors.white,
                            child: Text(
                                //'Login',
                                LocaleKeys.B02welcomeScreen_login.tr(),
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.grey)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                              );
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
