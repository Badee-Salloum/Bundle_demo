import 'package:bundle_demo/Module.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        child: Column(
          children: [
            Expanded(
              child: ListTile(
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
            ),
            Expanded(
              child: ListTile(
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
            ),
            Expanded(
              child: ListTile(
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
            ),
            Expanded(
              child: ListTile(
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
            ),
            Expanded(
              child: ListTile(
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
            ),
            Expanded(
              child: ListTile(
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
            ),
            Expanded(
              child: ListTile(
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
            ),
            Expanded(
              child: InkWell(
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
            ),
            Expanded(
              child: InkWell(
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
            ),
            Expanded(
              child: InkWell(
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
            ),
            Expanded(
              child: InkWell(
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
            ),
          ],
        ),
      ),
    );
  }
}
