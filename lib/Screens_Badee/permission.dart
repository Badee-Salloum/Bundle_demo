// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PermissionSecrren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Permissions',
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
            child: Text(
              'Skip',
              style: TextStyle(color: Color(0xff9676FF), fontSize: 15),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.0,
              ),
              SvgPicture.asset('assets/Photos/Private data-rafiki (1).svg'),
              SizedBox(
                height: 15.0,
              ),
              Text('Please allow us to access these services for Bundle use'),
              SizedBox(
                height: 15.0,
              ),
              MaterialButton(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                height: 51.0,
                minWidth: 300.0,
                color: Color(0xff9676FF),
                child: Text('Permissions',
                    style: TextStyle(fontSize: 16.0, color: Colors.white)),
                onPressed: () {},
              ),
              SizedBox(
                height: 15.0,
              ),
              MaterialButton(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Color(0xff9676FF))),
                height: 51.0,
                minWidth: 300.0,
                color: Colors.white,
                child: Text('Skip',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xff9676FF),
                    )),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
