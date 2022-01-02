// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bundle_demo/icomoon_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
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
            color: Colors.grey[900],
            rippleColor: Colors.purple, // unselected icon color
            activeColor: Colors.purple,
            iconSize: 24, // tab button icon size
            tabBackgroundColor:
                Colors.purple.withOpacity(0.1), // selected tab background color
            padding: EdgeInsets.symmetric(
                horizontal: 10, vertical: 5), // navigation bar padding
            tabs: [
              GButton(
                icon: Icomoon.Home,
                text: 'Home',
              ),
              GButton(
                icon: Icomoon.Map_filled,
                text: 'Map',
              ),
              GButton(
                icon: Icomoon.Chats,
                text: 'Chats',
              ),
              GButton(
                icon: Icomoon.Explore,
                text: 'Explore',
              ),
              GButton(
                icon: Icomoon.Settings,
                text: 'Settings',
              )
            ]),
      ),
    );
  }
}
