// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, non_constant_identifier_names

import 'onBording/OnBording.dart';
import 'permission.dart';
import 'welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // bool for first time open the app
  var first = false;
  var email = false;

  savePref(bool firstUse) async {
    SharedPreferences Preferences = await SharedPreferences.getInstance();
    Preferences.setBool("firstUse", firstUse);
  }

  // getPref() async {
  //   SharedPreferences Preferences = await SharedPreferences.getInstance();
  //   first = Preferences.getBool('firstUse')!;
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   email = prefs.getString('email')!;
  //   print(email);
  //   if (first == true && email.length < 3) {
  //     Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //             builder: (context) => SafeArea(child: WelcomeScreen())));
  //   } else if (first == true && email.length > 3) {
  //     // email!.length < 3
  //     //     ? Navigator.pushReplacement(
  //     //         context,
  //     //         MaterialPageRoute(builder: (context) => WelcomeScreen()),
  //     //       )
  //     //     :
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => PermissionSecrren()),
  //     );
  //   }
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    SharedPreferences Preferences = await SharedPreferences.getInstance();
    if (Preferences.getBool('firstUse') != null) {
      first = Preferences.getBool('firstUse')!;
    }
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getBool('email') != null) {
      email = prefs.getBool('email')!;
    }
    try {
      if (first == false) {
        savePref(true);
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => SafeArea(child: OnBordingPage())));
      } else if (email == false) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => SafeArea(child: WelcomeScreen())));
      } else if (email == true) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => SafeArea(child: PermissionScreen())));
      }

      //
      //
      // print('if0' + first.toString() + email.toString());
      // if (first == true && email == false) {
      //   print('if1' + first.toString() + email.toString());
      //   Navigator.pushReplacement(
      //       context,
      //       MaterialPageRoute(
      //           builder: (context) => SafeArea(child: WelcomeScreen())));
      // } else if (first == false && email == true) {
      //   // email!.length < 3
      //   //     ? Navigator.pushReplacement(
      //   //         context,
      //   //         MaterialPageRoute(builder: (context) => WelcomeScreen()),
      //   //       )
      //   //     :
      //   print('if2' + first.toString() + email.toString());
      //   Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(builder: (context) => PermissionSecrren()),
      //   );
      // } else {
      //   print('if3' + first.toString() + email.toString());
      //   savePref(false);
      //   Navigator.pushReplacement(
      //       context,
      //       MaterialPageRoute(
      //           builder: (context) => SafeArea(child: OnBordingPage())));
      // }
    } catch (e) {
      savePref(true);
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => SafeArea(child: OnBordingPage())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9676FF),
      body: Center(
        child: SizedBox(
          height: 114.0,
          width: 91.0,
          child: Image.asset(
            'assets/Photos/b logo.png',
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
