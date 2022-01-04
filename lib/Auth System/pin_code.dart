// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, constant_identifier_names, prefer_const_constructors_in_immutables, implementation_imports
import 'package:bundle_demo/translations/locale_keys.g.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'permission.dart';
import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:twilio_phone_verify/twilio_phone_verify.dart';

class PinCodeScreen extends StatefulWidget {
  final String phone;
  final String name;
  final String userName;
  final String password;

  PinCodeScreen(
      {required this.phone,
      required this.name,
      required this.password,
      required this.userName});

  @override
  State<PinCodeScreen> createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  int i = 1;
  final phoneController = TextEditingController();
  final otpController = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  getMobileFormWidget(context) {}

  getOtpFormWidget(BuildContext context) {}
  late TwilioPhoneVerify _twilioPhoneVerify;
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
  final MyConnectivity _connectivity = MyConnectivity.instance;
  Map _source = {ConnectivityResult.none: false};
  @override
  void initState() {
    super.initState();
    _connectivity.initialise();
    _connectivity.myStream.listen((source) {
      setState(() => _source = source);
    });
    _twilioPhoneVerify = new TwilioPhoneVerify(
        accountSid:
            'AC21d50ad44cb984fb12703973d9b076fd', // replace with Account SID
        authToken:
            '06d2051658a75699803d60fc4898b34e', // replace with Auth Token
        serviceSid:
            'VA31986fb907f24560f5b2a50a17ca660b' // replace with Service SID
        );
    _veri();
  }

  late String code;
  bool wait = true;
  Future _veri() async {
    try {
      TwilioResponse twilioResponse =
          await _twilioPhoneVerify.sendSmsCode(widget.phone);
      setState(() {
        wait = false;
      });
    } catch (e) {
      setState(() {
        wait = false;
      });
      Navigator.pop(context);
      dialog(
          context: context,
          text: 'error',
          content: 'please check your phone number and try again',
          buttonText: 'close');
    }
  }

  Future _send(String c) async {
    setState(() {
      wait = true;
    });

    try {
      TwilioResponse twilioResponse =
          await _twilioPhoneVerify.verifySmsCode(phone: widget.phone, code: c);
      if (twilioResponse.successful == true) {
        if (twilioResponse.verification!.status ==
            VerificationStatus.approved) {
          setState(() {
            wait = false;
          });
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PermissionScreen()));
        }
      } else {
        setState(() {
          wait = false;
        });
        Navigator.pop(context);
        dialog(
            context: context,
            text: 'error',
            content: 'try again',
            buttonText: 'close');
      }
    } catch (e) {
      setState(() {
        wait = false;
      });
      Navigator.pop(context);
      dialog(
          context: context,
          text: 'error',
          content: e.toString(),
          buttonText: 'close');
    }
  }

  void dialog(
      {required BuildContext context,
      required String text,
      required String content,
      required String buttonText}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(text),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(buttonText),
            ),
          ],
        );
      },
    );
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
                //"Verify code",
                LocaleKeys.B05verifyCodeScreen_verify.tr(),
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
                          //"Enter 6 - digits that we sent to  ",
                          LocaleKeys.B05verifyCodeScreen_enter.tr(),
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          widget.phone,
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
                              readOnly: true,
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
                                    color1 = Color(0xff9676FF);
                                  });
                                  FocusScope.of(context).nextFocus();
                                } else {
                                  setState(() {
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
                              readOnly: true,
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
                              readOnly: true,
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
                              readOnly: true,
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
                              readOnly: true,
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
                              readOnly: true,
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
                              i--;
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
                        if (_source.keys.toList()[0] ==
                            ConnectivityResult.none) {
                          dialog(
                              context: context,
                              content: 'try again later',
                              text: 'no net',
                              buttonText: 'close');
                        } else if (tec1.value.text != '' &&
                            tec2.value.text != '' &&
                            tec3.value.text != '' &&
                            tec4.value.text != '' &&
                            tec5.value.text != '' &&
                            tec6.value.text != '') {
                          _send(tec1.value.text +
                              tec2.value.text +
                              tec3.value.text +
                              tec4.value.text +
                              tec5.value.text +
                              tec6.value.text);
                        } else {
                          dialog(
                              context: context,
                              text: 'error',
                              content: 'fill all the text fields',
                              buttonText: 'close');
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
        color1 = Color(0xff9676FF);
        i++;
      });
    } else if (i == 2) {
      setState(() {
        tec2.text = value;
        color2 = Color(0xff9676FF);
        i++;
      });
    } else if (i == 3) {
      setState(() {
        tec3.text = value;
        color3 = Color(0xff9676FF);
        i++;
      });
    } else if (i == 4) {
      setState(() {
        tec4.text = value;
        color4 = Color(0xff9676FF);
        i++;
      });
    } else if (i == 5) {
      setState(() {
        tec5.text = value;
        color5 = Color(0xff9676FF);
        i++;
      });
    } else if (i == 6) {
      setState(() {
        tec6.text = value;
        color6 = Color(0xff9676FF);
        i++;
      });
    }
  }
}

class MyConnectivity {
  MyConnectivity._();

  static final _instance = MyConnectivity._();
  static MyConnectivity get instance => _instance;
  final _connectivity = Connectivity();
  final _controller = StreamController.broadcast();
  Stream get myStream => _controller.stream;

  void initialise() async {
    ConnectivityResult result = await _connectivity.checkConnectivity();
    _checkStatus(result);
    _connectivity.onConnectivityChanged.listen((result) {
      _checkStatus(result);
    });
  }

  void _checkStatus(ConnectivityResult result) async {
    bool isOnline = false;
    try {
      final result = await InternetAddress.lookup('google.com');
      isOnline = result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      isOnline = false;
    }
    _controller.sink.add({result: isOnline});
  }

  void disposeStream() => _controller.close();
}
