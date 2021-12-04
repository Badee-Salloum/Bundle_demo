// ignore_for_file: file_names, use_key_in_widget_constructors, camel_case_types
import '../../Screens_Walaa/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'ContentModle.dart';

class OnBordingPage extends StatefulWidget {
  @override
  _onBordingPageState createState() => _onBordingPageState();
}

class _onBordingPageState extends State<OnBordingPage> {
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
      skip: const Text('Skip',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
      next: const Text('Next',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
      done: const Text("Done",
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
