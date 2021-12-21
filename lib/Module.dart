// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'my_flutter_app_icons.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GNav(
          haptic: true, // haptic feedback
          tabBorderRadius: 15,
          // tabActiveBorder:
          //     Border.all(color: Colors.black, width: 0), // tab button border
          // tabBorder:
          //     Border.all(color: Colors.grey, width: 0), // tab button border
          curve: Curves.easeOutExpo, // tab animation curves
          duration: Duration(milliseconds: 500), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          color: Colors.grey[800], // unselected icon color
          activeColor: Colors.purple, // selected icon and text color
          iconSize: 24, // tab button icon size
          tabBackgroundColor:
              Colors.purple.withOpacity(0.1), // selected tab background color
          padding: EdgeInsets.symmetric(
              horizontal: 20, vertical: 5), // navigation bar padding
          tabs: [
            GButton(
              icon: MyFlutterApp.home,
              text: 'Home',
            ),
            GButton(
              icon: MyFlutterApp.map_filled,
              text: 'Map',
            ),
            GButton(
              icon: MyFlutterApp.chats,
              text: 'Chats',
            ),
            GButton(
              icon: MyFlutterApp.explore,
              text: 'Explore',
            ),
            GButton(
              icon: MyFlutterApp.settings,
              text: 'Settings',
            )
          ]),
    );
  }
}
