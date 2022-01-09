// ignore_for_file: prefer_const_constructors

import 'package:bundle_demo/Folder02/SavedPlaces.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Module.dart';
import 'MapStyleScreen.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  bool but = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Map",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Always show my location',
                style: TextStyle(fontWeight: FontWeight.bold),
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
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.black12,
            ),
            ListTile(
              title: Text(
                'Show countries locations',
                style: TextStyle(fontWeight: FontWeight.bold),
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
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.black12,
            ),
            ListTile(
              title: Text(
                'Auto map mode',
                style: TextStyle(fontWeight: FontWeight.bold),
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
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.black12,
            ),
            ListTile(
              onTap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MapStylerScreen())),
              title: Text(
                'Change map style',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.black12,
            ),
            ListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SavedPlaces()),
              ),
              title: Text(
                'Saved locations',
                style: TextStyle(fontWeight: FontWeight.bold),
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
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
