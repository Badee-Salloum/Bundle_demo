// import 'package:bundle_demo/Screens_Badee/onBording/OnBording.dart';
// import 'package:flutter/material.dart';
//
// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _navigatetohome();
//   }
//
//   _navigatetohome() async {
//     await Future.delayed(Duration(milliseconds: 2000), () {});
//     Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//             builder: (context) => SafeArea(child: OnBordingPage())));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: const Color(0xFF7656A9),
//         body: Center(
//           child: Image.asset('assets/Photos/bundle_logo.png'),
//         ));
//   }
// }