// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../constant.dart';

// ignore: camel_case_types
class TextField_SignUp extends StatelessWidget {
  late TextEditingController con;
  late Widget prefix;
  late String hintText;
  late bool hideInput;
  late TextInputType keyboardType;
  TextField_SignUp({
    required this.con,
    required this.prefix,
    required this.hintText,
    this.keyboardType = TextInputType.name,
    this.hideInput = false,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: hideInput,
        keyboardType: keyboardType,
        onChanged: (val) {
          con.text = val;
        },
        decoration: kTextFieldDecoration.copyWith(
          hintText: hintText,
          prefixIcon: prefix,
        ),
      ),
    );
  }
}
