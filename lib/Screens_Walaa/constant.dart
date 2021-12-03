import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  icon: Icon(
    Icons.account_circle,
    color: Color(0xff7656a9),
  ),
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(30.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xff7656a9), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(30.0)),
  ),
);
