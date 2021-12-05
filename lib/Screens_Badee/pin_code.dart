// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PinCodeScreen extends StatefulWidget {
  final String phone;
  PinCodeScreen({required this.phone});
  @override
  State<PinCodeScreen> createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  late String f1;
  late String f2;
  late String f3;
  late String f4;
  late String f5;
  late String f6;
  Color color1 = Colors.grey;
  Color color2 = Colors.grey;
  Color color3 = Colors.grey;
  Color color4 = Colors.grey;
  Color color5 = Colors.grey;
  Color color6 = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.phone}'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    autofocus: true,
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
                    autofocus: true,
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
                    autofocus: true,
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
                    autofocus: true,
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
                    autofocus: true,
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
                    autofocus: true,
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
        ],
      ),
    );
  }
}
