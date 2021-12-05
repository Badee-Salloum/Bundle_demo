// // ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables
// import 'permission.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:numeric_keyboard/numeric_keyboard.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
// enum MobileVerify { SHOW_MOBILE_FORM_STATE, SHOW_OTP_FORM_STATE }
//
// class PinCodeScreen extends StatefulWidget {
//   final String phone;
//
//   PinCodeScreen({required this.phone});
//
//   @override
//   State<PinCodeScreen> createState() => _PinCodeScreenState();
// }
//
// class _PinCodeScreenState extends State<PinCodeScreen> {
//   final currentState = MobileVerify.SHOW_MOBILE_FORM_STATE;
//   final phoneController = TextEditingController();
//   final otpController = TextEditingController();
//   FirebaseAuth _auth = FirebaseAuth.instance;
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
//   getMobileFormWidget(context) {}
//
//   getOtpFormWidget(BuildContext context) {}
//
//   late String f1='';
//   late String f2='';
//   late String f3='';
//   late String f4='';
//   late String f5='';
//   late String f6='';
//   Color color1 = Colors.grey;
//   Color color2 = Colors.grey;
//   Color color3 = Colors.grey;
//   Color color4 = Colors.grey;
//   Color color5 = Colors.grey;
//   Color color6 = Colors.grey;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: AppBar(
//         leading: BackButton(color: Colors.black),
//         elevation: 0.0,
//         backgroundColor: Colors.white,
//         centerTitle: true,
//         title: Text(
//           "Verify code",
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//       body: Container(
//         padding: EdgeInsets.symmetric(horizontal: 20),
//         width: double.infinity,
//         height: double.infinity,
//         color: Colors.white,
//         child: Column(
//           children: [
//             currentState == MobileVerify.SHOW_MOBILE_FORM_STATE
//                 ? getMobileFormWidget(context)
//                 : getOtpFormWidget(context),
//             SvgPicture.asset(
//               'assets/Photos/Curious-amico.svg',
//               fit: BoxFit.fitWidth,
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Enter 6 - digits that we sent to  ",
//                   style: TextStyle(fontSize: 15),
//                 ),
//                 Text(
//                   "+967501999946",
//                   style: TextStyle(fontSize: 15, color: Color(0xff9676FF)),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 45,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       autofocus: true,
//                       maxLength: 1,
//                       textAlign: TextAlign.center,
//                       buildCounter: (BuildContext context,
//                               {int? currentLength,
//                               int? maxLength,
//                               bool? isFocused}) =>
//                           null,
//                       textInputAction: TextInputAction.next,
//                       onChanged: (value) {
//                         if (value != '') {
//                           setState(() {
//                             color1 = Color(0xff9676FF);
//                           });
//                           FocusScope.of(context).nextFocus();
//                         } else {
//                           setState(() {
//                             color1 = Colors.grey;
//                           });
//                         }
//                       },
//                       cursorColor: Color(0xff9676FF),
//                       decoration: InputDecoration(
//                         enabledBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: color1),
//                         ),
//                         focusedBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: Color(0xff9676FF)),
//                         ),
//                         errorBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.redAccent),
//                         ),
//                         focusedErrorBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: Color(0xff9676FF)),
//                         ),
//                         hintText: '#',
//                         focusColor: color1,
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: TextField(
//                       autofocus: true,
//                       maxLength: 1,
//                       textAlign: TextAlign.center,
//                       buildCounter: (BuildContext context,
//                               {int? currentLength,
//                               int? maxLength,
//                               bool? isFocused}) =>
//                           null,
//                       textInputAction: TextInputAction.next,
//                       onChanged: (value) {
//                         if (value != '') {
//                           setState(() {
//                             color2 = Color(0xff9676FF);
//                           });
//                           FocusScope.of(context).nextFocus();
//                         } else {
//                           setState(() {
//                             color2 = Colors.grey;
//                           });
//                         }
//                       },
//                       cursorColor: Color(0xff9676FF),
//                       decoration: InputDecoration(
//                         enabledBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: color2),
//                         ),
//                         focusedBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: Color(0xff9676FF)),
//                         ),
//                         hintText: '#',
//                         focusColor: color2,
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: TextField(
//                       autofocus: true,
//                       maxLength: 1,
//                       textAlign: TextAlign.center,
//                       buildCounter: (BuildContext context,
//                               {int? currentLength,
//                               int? maxLength,
//                               bool? isFocused}) =>
//                           null,
//                       textInputAction: TextInputAction.next,
//                       onChanged: (value) {
//                         if (value != '') {
//                           setState(() {
//                             color3 = Color(0xff9676FF);
//                           });
//                           FocusScope.of(context).nextFocus();
//                         } else {
//                           setState(() {
//                             color3 = Colors.grey;
//                           });
//                         }
//                       },
//                       cursorColor: Color(0xff9676FF),
//                       decoration: InputDecoration(
//                         enabledBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: color3),
//                         ),
//                         focusedBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: Color(0xff9676FF)),
//                         ),
//                         hintText: '#',
//                         focusColor: color3,
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: TextField(
//                       autofocus: true,
//                       maxLength: 1,
//                       textAlign: TextAlign.center,
//                       buildCounter: (BuildContext context,
//                               {int? currentLength,
//                               int? maxLength,
//                               bool? isFocused}) =>
//                           null,
//                       textInputAction: TextInputAction.next,
//                       onChanged: (value) {
//                         if (value != '') {
//                           setState(() {
//                             color4 = Color(0xff9676FF);
//                           });
//                           FocusScope.of(context).nextFocus();
//                         } else {
//                           setState(() {
//                             color4 = Colors.grey;
//                           });
//                         }
//                       },
//                       cursorColor: Color(0xff9676FF),
//                       decoration: InputDecoration(
//                         enabledBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: color4),
//                         ),
//                         focusedBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: Color(0xff9676FF)),
//                         ),
//                         hintText: '#',
//                         focusColor: color4,
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: TextField(
//                       autofocus: true,
//                       maxLength: 1,
//                       textAlign: TextAlign.center,
//                       buildCounter: (BuildContext context,
//                               {int? currentLength,
//                               int? maxLength,
//                               bool? isFocused}) =>
//                           null,
//                       textInputAction: TextInputAction.next,
//                       onChanged: (value) {
//                         if (value != '') {
//                           setState(() {
//                             color5 = Color(0xff9676FF);
//                           });
//                           FocusScope.of(context).nextFocus();
//                         } else {
//                           setState(() {
//                             color5 = Colors.grey;
//                           });
//                         }
//                       },
//                       cursorColor: Color(0xff9676FF),
//                       decoration: InputDecoration(
//                         enabledBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: color5),
//                         ),
//                         focusedBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: Color(0xff9676FF)),
//                         ),
//                         hintText: '#',
//                         focusColor: color5,
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: TextField(
//                       autofocus: true,
//                       maxLength: 1,
//                       textAlign: TextAlign.center,
//                       buildCounter: (BuildContext context,
//                               {int? currentLength,
//                               int? maxLength,
//                               bool? isFocused}) =>
//                           null,
//                       textInputAction: TextInputAction.next,
//                       onChanged: (value) async {
//                         if (value != '') {
//                           setState(() {
//                             color6 = Color(0xff9676FF);
//                           });
//                           await _auth.verifyPhoneNumber(
//                             phoneNumber: widget.phone,
//                             verificationCompleted: (val) {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => PermissionSecrren(
//                                     ),
//                                   ),
//                                 );
//                               },
//                             verificationFailed:(val){Navigator.pop(context);
//                             Fluttertoast.showToast(msg: 'try again');
//                             },
//                             codeSent: //show toast,
//                             codeAutoRetrievalTimeout: //error please pop,
//                           );
//                           FocusScope.of(context).nextFocus();
//                         } else {
//                           setState(() {
//                             color6 = Colors.grey;
//                           });
//                         }
//                       },
//                       cursorColor: Color(0xff9676FF),
//                       decoration: InputDecoration(
//                         enabledBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: color6),
//                         ),
//                         focusedBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: Color(0xff9676FF)),
//                         ),
//                         hintText: '#',
//                         focusColor: color6,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             NumericKeyboard(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               onKeyboardTap: _onKeyboardTap,
//               textColor: Colors.black,
//               rightButtonFn: () {
//                 setState(() {
//                   //text = text.substring(0, text.length - 1);
//                 });
//               },
//               rightIcon: Icon(
//                 Icons.backspace,
//                 color: Colors.black,
//               ),
//               leftButtonFn: () {
//                 print('left button clicked');
//               },
//               leftIcon: Icon(
//                 Icons.check,
//                 color: Color(0xff9676FF),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   _onKeyboardTap(String value) {
//     setState(() {
//       //text = text + value;
//     });
//   }
// }
