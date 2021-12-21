// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:bundle_demo/Folder02/Privacy&Security.dart';
import 'package:bundle_demo/Folder02/map_screen.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Module.dart';
import 'Help.dart';
import 'account_screen.dart';

class SettingScreen extends StatefulWidget {
  // const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              ListTile(
                leading: CircularProfileAvatar(
                  '',
                  child: Image(
                    image: AssetImage('assets/Photos/omar.jpg'),
                  ),
                  // Icon(
                  //         Icons.person,
                  //         size: 50,
                  //       ),
                  borderColor: Colors.black,
                  borderWidth: 0.0,
                  elevation: 0.0,
                  radius: 30,
                ),
                title: Row(
                  children: [
                    Text('Name'),
                    SvgPicture.asset(
                      'assets/Icons/Verify.svg',
                      color: Color(0xff9676FF),
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                ),
                subtitle: Text('@UserName'),
                trailing: SvgPicture.asset(
                  'assets/Icons/edit outline.svg',
                  fit: BoxFit.fitWidth,
                ),
              ),
              ListTile(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccountScreen()),
                ),
                leading: SvgPicture.asset(
                  'assets/Icons/account.svg',
                  fit: BoxFit.fitWidth,
                ),
                title: Text('Account'),
              ),
              ListTile(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapScreen()),
                ),
                leading: SvgPicture.asset(
                  'assets/Icons/Map outline.svg',
                  fit: BoxFit.fitWidth,
                ),
                title: Text('Map'),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/Icons/Notifications outline.svg',
                  fit: BoxFit.fitWidth,
                ),
                title: Text('Notifications'),
              ),
              ListTile(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PrivacyAndSecurityScreen()),
                ),
                leading: SvgPicture.asset(
                  'assets/Icons/Security.svg',
                  fit: BoxFit.fitWidth,
                ),
                title: Text('Privacy & Security'),
              ),
              ListTile(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpScreen()),
                ),
                leading: SvgPicture.asset(
                  'assets/Icons/Help.svg',
                  fit: BoxFit.fitWidth,
                ),
                title: Text('Help'),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/Icons/Logout.svg',
                  color: Colors.amber[800],
                  fit: BoxFit.fitWidth,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.amber[800]),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar());
  }
}

class BundelIcon extends StatelessWidget {
  const BundelIcon({Key? key}) : super(key: key);

  BundelIcon._();

  static const _kFontFam = 'NewIcon';

  static const IconData Map_filled =
      IconData(0xe800, fontFamily: _kFontFam, fontPackage: null);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
