// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bundle_demo/Folder02/ReportProblem.dart';
import 'package:bundle_demo/Module.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

bool but = false;

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Text(
          'Help',
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
            RawMaterialButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReportProblem()),
              ),
              child: ListTile(
                leading: Text(
                  'Report a problem',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.black12,
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
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.black12,
            ),
          ],
        ),
      ),
    );
  }
}
