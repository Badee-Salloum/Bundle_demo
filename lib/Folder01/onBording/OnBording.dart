// ignore_for_file: file_names, use_key_in_widget_constructors, camel_case_types, prefer_const_constructors
import 'package:bundle_demo/translations/locale_keys.g.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Folder01//welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'ContentModle.dart';

class OnBordingPage extends StatefulWidget {
  @override
  _onBordingPageState createState() => _onBordingPageState();
}

class _onBordingPageState extends State<OnBordingPage> {
  // savePref(bool firstUse) async {
  //   SharedPreferences Preferences = await SharedPreferences.getInstance();
  //   Preferences.setBool("firstUse", firstUse);
  //   print(Preferences.getBool('firstUse'));
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //savePref(true);
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: pages,
      onDone: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomeScreen(),
          ),
        );
      },
      onSkip: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomeScreen(),
          ),
        );
      },
      showSkipButton: true,
      skip: Text(
          //'Skip',
          LocaleKeys.B01onBoarding_skip.tr(),
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
      next: Text(
          //'Next',
          LocaleKeys.B01onBoarding_next.tr(),
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
      done: Text(
          //"Done",
          LocaleKeys.B01onBoarding_done.tr(),
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Color(0xFF9676FF),
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
    );
  }
}
