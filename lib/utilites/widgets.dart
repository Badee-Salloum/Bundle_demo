// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class coloredButton extends StatelessWidget {
  final String text;
  final Function onPresse;
  coloredButton({required this.text, required this.onPresse});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      height: 51.0,
      minWidth: 300.0,
      color: Color(0xff9676FF),
      child: Text(text, style: TextStyle(fontSize: 16.0, color: Colors.white)),
      onPressed: onPresse(),
    );
  }
}
