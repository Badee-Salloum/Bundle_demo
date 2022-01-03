import 'package:bundle_demo/Folder02/ChangePassCode/SaveNewPassCodeScreen.dart';
import 'package:bundle_demo/Folder02/account_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewPassCodeScreen extends StatefulWidget {
  const NewPassCodeScreen({Key? key}) : super(key: key);

  @override
  _NewPassCodeScreenState createState() => _NewPassCodeScreenState();
}

class _NewPassCodeScreenState extends State<NewPassCodeScreen> {
  var tec1 = TextEditingController();
  var tec2 = TextEditingController();
  var tec3 = TextEditingController();
  var tec4 = TextEditingController();
  var tec5 = TextEditingController();
  var tec6 = TextEditingController();
  Color color1 = Colors.grey;
  Color color2 = Colors.grey;
  Color color3 = Colors.grey;
  Color color4 = Colors.grey;
  Color color5 = Colors.grey;
  Color color6 = Colors.grey;
  Color pick() {
    if (tec1.value.text.isNotEmpty &&
        tec2.value.text.isNotEmpty &&
        tec3.value.text.isNotEmpty &&
        tec4.value.text.isNotEmpty &&
        tec5.value.text.isNotEmpty &&
        tec6.value.text.isNotEmpty) {
      return Color(0xff9676FF);
    } else {
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Change pass code",
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
                'assets/Photos/Change pass code.svg',
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Enter current pass code',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
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
                            borderSide: BorderSide(color: Color(0xff9676FF)),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff9676FF)),
                          ),
                          hintText: '#',
                          focusColor: color1,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
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
                            borderSide: BorderSide(color: Color(0xff9676FF)),
                          ),
                          hintText: '#',
                          focusColor: color2,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
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
                            borderSide: BorderSide(color: Color(0xff9676FF)),
                          ),
                          hintText: '#',
                          focusColor: color3,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
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
                            borderSide: BorderSide(color: Color(0xff9676FF)),
                          ),
                          hintText: '#',
                          focusColor: color4,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
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
                            borderSide: BorderSide(color: Color(0xff9676FF)),
                          ),
                          hintText: '#',
                          focusColor: color5,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
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
                            borderSide: BorderSide(color: Color(0xff9676FF)),
                          ),
                          hintText: '#',
                          focusColor: color6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              MaterialButton(
                enableFeedback: false,
                disabledColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                height: 51.0,
                minWidth: 300.0,
                color: pick(),
                child: Text(
                  'Continue',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: pick() == Color(0xff9676FF)
                          ? Colors.white
                          : Colors.grey),
                ),
                onPressed: pick() == Color(0xff9676FF)
                    ? () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SaveNewPassCodeScreen()),
                        )
                    : null,
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
