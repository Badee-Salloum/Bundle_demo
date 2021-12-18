// ignore_for_file: file_names, prefer_const_constructors

import 'package:bundle_demo/Module.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrivacyAndSecurityScreen extends StatefulWidget {
  const PrivacyAndSecurityScreen({Key? key}) : super(key: key);

  @override
  _PrivacyAndSecurityScreenState createState() =>
      _PrivacyAndSecurityScreenState();
}

bool but = false;

class _PrivacyAndSecurityScreenState extends State<PrivacyAndSecurityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Privacy & Security',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomNavBar(),
      body: Container(
        padding: EdgeInsets.all(10.0),
        color: Colors.white,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: Text(
                  'Private account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: CupertinoSwitch(
                    activeColor: Color(0xff9676FF),
                    value: but,
                    onChanged: (val) {
                      setState(() {
                        but = val;
                      });
                    }),
              ),
              ListTile(
                leading: Text(
                  'Login verification',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: CupertinoSwitch(
                    activeColor: Color(0xff9676FF),
                    value: but,
                    onChanged: (val) {
                      setState(() {
                        but = val;
                      });
                    }),
              ),
              ListTile(
                leading: Text(
                  'Allow send a message',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: CupertinoSwitch(
                    activeColor: Color(0xff9676FF),
                    value: but,
                    onChanged: (val) {
                      setState(() {
                        but = val;
                      });
                    }),
              ),
              ListTile(
                leading: Text(
                  'Show followers',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: CupertinoSwitch(
                    activeColor: Color(0xff9676FF),
                    value: but,
                    onChanged: (val) {
                      setState(() {
                        but = val;
                      });
                    }),
              ),
              ListTile(
                leading: Text(
                  'Show followings',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: CupertinoSwitch(
                    activeColor: Color(0xff9676FF),
                    value: but,
                    onChanged: (val) {
                      setState(() {
                        but = val;
                      });
                    }),
              ),
              ListTile(
                leading: Text(
                  'Show your rank',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: CupertinoSwitch(
                    activeColor: Color(0xff9676FF),
                    value: but,
                    onChanged: (val) {
                      setState(() {
                        but = val;
                      });
                    }),
              ),
              ListTile(
                leading: Text(
                  'Show your rank',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: CupertinoSwitch(
                    activeColor: Color(0xff9676FF),
                    value: but,
                    onChanged: (val) {
                      setState(() {
                        but = val;
                      });
                    }),
              ),
              RawMaterialButton(
                onPressed: () {},
                child: ListTile(
                  leading: Text(
                    'Blocked accounts',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              RawMaterialButton(
                onPressed: () {},
                child: ListTile(
                  leading: Text(
                    'Login info',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              RawMaterialButton(
                onPressed: () {},
                child: ListTile(
                  leading: Text(
                    'Search history',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              RawMaterialButton(
                onPressed: () {},
                child: ListTile(
                  leading: Text(
                    'Privacy policy',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
