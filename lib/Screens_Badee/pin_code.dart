// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'permission.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum MobileVerify { SHOW_MOBILE_FORM_STATE, SHOW_OTP_FORM_STATE }

class PinCodeScreen extends StatefulWidget {
  final String phone;

  PinCodeScreen({required this.phone});

  @override
  State<PinCodeScreen> createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  int i = 1;
  final currentState = MobileVerify.SHOW_MOBILE_FORM_STATE;
  final phoneController = TextEditingController();
  final otpController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  getMobileFormWidget(context) {}

  getOtpFormWidget(BuildContext context) {}

  late String f1 = '';
  late String f2 = '';
  late String f3 = '';
  late String f4 = '';
  late String f5 = '';
  late String f6 = '';
  Color color1 = Colors.grey;
  Color color2 = Colors.grey;
  Color color3 = Colors.grey;
  Color color4 = Colors.grey;
  Color color5 = Colors.grey;
  Color color6 = Colors.grey;
  var tec1 = TextEditingController();
  var tec2 = TextEditingController();
  var tec3 = TextEditingController();
  var tec4 = TextEditingController();
  var tec5 = TextEditingController();
  var tec6 = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _veri();
  }

  late String code;
  bool wait = true;
  Future _veri() async {
    _auth.verifyPhoneNumber(
      phoneNumber: widget.phone,
      verificationCompleted: (val) async {},
      verificationFailed: (val) async {
        setState(() {
          wait = false;
        });
      },
      codeSent: (val, val2) async {
        setState(() {
          code = val;
          wait = false;
        });
        print(code);
      },
      codeAutoRetrievalTimeout: (val) async {
        Navigator.pop(context);
      },
    );
  }

  Future _send(String c) async {
    setState(() {
      wait = true;
    });
    print(code);
    var car = PhoneAuthProvider.credential(
      verificationId: code,
      smsCode: c,
    );
    try {
      final authCredential = await _auth.signInWithCredential(car);

      if (authCredential.user != null) {
        setState(() {
          wait = false;
        });
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PermissionSecrren()));
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        wait = false;
      });
      print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return wait
        ? Container(
            color: Colors.white,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : Scaffold(
            key: _scaffoldKey,
            appBar: AppBar(
              leading: BackButton(color: Colors.black),
              elevation: 0.0,
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Text(
                "Verify code",
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: double.infinity,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/Photos/Curious-amico.svg',
                      fit: BoxFit.fitWidth,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Enter 6 - digits that we sent to  ",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "${widget.phone}",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff9676FF)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.none,
                              controller: tec1,
                              maxLength: 1,
                              textAlign: TextAlign.center,
                              buildCounter: (BuildContext context,
                                      {int? currentLength,
                                      int? maxLength,
                                      bool? isFocused}) =>
                                  null,
                              textInputAction: TextInputAction.next,
                              onChanged: (value) {
                                if (value != '') {
                                  setState(() {
                                    value = f1;
                                    color1 = Color(0xff9676FF);
                                  });
                                  FocusScope.of(context).nextFocus();
                                } else {
                                  setState(() {
                                    value = f1;
                                    color1 = Colors.grey;
                                  });
                                }
                              },
                              cursorColor: Color(0xff9676FF),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: color1),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff9676FF)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.redAccent),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff9676FF)),
                                ),
                                hintText: '#',
                                focusColor: color1,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.none,
                              controller: tec2,
                              maxLength: 1,
                              textAlign: TextAlign.center,
                              buildCounter: (BuildContext context,
                                      {int? currentLength,
                                      int? maxLength,
                                      bool? isFocused}) =>
                                  null,
                              textInputAction: TextInputAction.next,
                              onChanged: (value) {
                                if (value != '') {
                                  setState(() {
                                    f2 = value;
                                    color2 = Color(0xff9676FF);
                                  });
                                  FocusScope.of(context).nextFocus();
                                } else {
                                  setState(() {
                                    color2 = Colors.grey;
                                  });
                                }
                              },
                              cursorColor: Color(0xff9676FF),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: color2),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff9676FF)),
                                ),
                                hintText: '#',
                                focusColor: color2,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.none,
                              controller: tec3,
                              maxLength: 1,
                              textAlign: TextAlign.center,
                              buildCounter: (BuildContext context,
                                      {int? currentLength,
                                      int? maxLength,
                                      bool? isFocused}) =>
                                  null,
                              textInputAction: TextInputAction.next,
                              onChanged: (value) {
                                if (value != '') {
                                  setState(() {
                                    f3 = value;
                                    color3 = Color(0xff9676FF);
                                  });
                                  FocusScope.of(context).nextFocus();
                                } else {
                                  setState(() {
                                    color3 = Colors.grey;
                                  });
                                }
                              },
                              cursorColor: Color(0xff9676FF),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: color3),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff9676FF)),
                                ),
                                hintText: '#',
                                focusColor: color3,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.none,
                              controller: tec4,
                              maxLength: 1,
                              textAlign: TextAlign.center,
                              buildCounter: (BuildContext context,
                                      {int? currentLength,
                                      int? maxLength,
                                      bool? isFocused}) =>
                                  null,
                              textInputAction: TextInputAction.next,
                              onChanged: (value) {
                                if (value != '') {
                                  setState(() {
                                    f4 = value;
                                    color4 = Color(0xff9676FF);
                                  });
                                  FocusScope.of(context).nextFocus();
                                } else {
                                  setState(() {
                                    color4 = Colors.grey;
                                  });
                                }
                              },
                              cursorColor: Color(0xff9676FF),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: color4),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff9676FF)),
                                ),
                                hintText: '#',
                                focusColor: color4,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.none,
                              controller: tec5,
                              maxLength: 1,
                              textAlign: TextAlign.center,
                              buildCounter: (BuildContext context,
                                  {int? currentLength,
                                  int? maxLength,
                                  bool? isFocused}) {},
                              textInputAction: TextInputAction.next,
                              onChanged: (value) {
                                if (value != '') {
                                  setState(() {
                                    f5 = value;
                                    color5 = Color(0xff9676FF);
                                  });
                                  FocusScope.of(context).nextFocus();
                                } else {
                                  setState(() {
                                    color5 = Colors.grey;
                                  });
                                }
                              },
                              cursorColor: Color(0xff9676FF),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: color5),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff9676FF)),
                                ),
                                hintText: '#',
                                focusColor: color5,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.none,
                              controller: tec6,
                              maxLength: 1,
                              textAlign: TextAlign.center,
                              buildCounter: (BuildContext context,
                                      {int? currentLength,
                                      int? maxLength,
                                      bool? isFocused}) =>
                                  null,
                              textInputAction: TextInputAction.next,
                              onChanged: (value) {
                                if (value != '') {
                                  setState(() {
                                    f6 = value;
                                    color6 = Color(0xff9676FF);
                                  });
                                  FocusScope.of(context).nextFocus();
                                } else {
                                  setState(() {
                                    color6 = Colors.grey;
                                  });
                                }
                              },
                              cursorColor: Color(0xff9676FF),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: color6),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff9676FF)),
                                ),
                                hintText: '#',
                                focusColor: color6,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    NumericKeyboard(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      onKeyboardTap: _onKeyboardTap,
                      textColor: Colors.black,
                      rightButtonFn: () {
                        setState(() {
                          if (i == 2) {
                            setState(() {
                              tec1.clear();
                              color1 = Colors.grey;
                            });
                          } else if (i == 3) {
                            setState(() {
                              tec2.clear();
                              color2 = Colors.grey;
                              i--;
                            });
                          } else if (i == 4) {
                            setState(() {
                              tec3.clear();
                              color3 = Colors.grey;
                              i--;
                            });
                          } else if (i == 5) {
                            setState(() {
                              tec4.clear();
                              color4 = Colors.grey;
                              i--;
                            });
                          } else if (i == 6) {
                            setState(() {
                              tec5.clear();
                              color5 = Colors.grey;
                              i--;
                            });
                          } else if (i == 7) {
                            setState(() {
                              tec6.clear();
                              color6 = Colors.grey;
                              i--;
                            });
                          }

                          //text = text.substring(0, text.length - 1);
                        });
                      },
                      rightIcon: Icon(
                        Icons.backspace,
                        color: Colors.black,
                      ),
                      leftButtonFn: () {
                        print('left button clicked');
                        print(f1 + f2 + f3 + f4 + f5 + f6);
                        if (f1 != '' &&
                            f2 != '' &&
                            f3 != '' &&
                            f4 != '' &&
                            f5 != '' &&
                            f6 != '') {
                          _send(f1 + f2 + f3 + f4 + f5 + f6);
                        }
                      },
                      leftIcon: Icon(
                        Icons.check,
                        color: Color(0xff9676FF),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  _onKeyboardTap(String value) {
    setState(() {
      //text = text + value;
    });
    _numberChange(value);
  }

  _numberChange(String value) {
    if (i == 1) {
      setState(() {
        tec1.text = value;
        f1 = value;
        color1 = Color(0xff9676FF);
        i++;
      });
    } else if (i == 2) {
      setState(() {
        tec2.text = value;
        f2 = value;
        color2 = Color(0xff9676FF);
        i++;
      });
    } else if (i == 3) {
      setState(() {
        tec3.text = value;
        f3 = value;
        color3 = Color(0xff9676FF);
        i++;
      });
    } else if (i == 4) {
      setState(() {
        tec4.text = value;
        f4 = value;
        color4 = Color(0xff9676FF);
        i++;
      });
    } else if (i == 5) {
      setState(() {
        tec5.text = value;
        f5 = value;
        color5 = Color(0xff9676FF);
        i++;
      });
    } else if (i == 6) {
      setState(() {
        tec6.text = value;
        f6 = value;
        color6 = Color(0xff9676FF);
        i++;
      });
    }
  }
}
