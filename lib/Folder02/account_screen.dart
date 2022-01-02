// ignore_for_file: prefer_const_constructors

import 'package:bundle_demo/Folder02/ChangePassCode/EnterNewPassCode.dart';
import 'package:bundle_demo/Folder02/SavedPosts.dart';
import 'package:bundle_demo/Folder02/SavedProfiles.dart';
import 'package:bundle_demo/Folder02/changePhoneNumber/newNumber.dart';
import 'package:bundle_demo/Folder02/savedPostsAll.dart';
import 'package:flutter/material.dart';

import '../Module.dart';
import 'QRCode.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Account",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              ListTile(
                onTap: () {},
                title: Text(
                  'Edit profile',
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
                  MaterialPageRoute(builder: (context) => SavedProfiles()),
                ),
                title: Text(
                  'Saved profiles',
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
                  MaterialPageRoute(builder: (context) => SavedPostsWalaa()),
                ),
                title: Text(
                  'Saved posts',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.black12,
              ),
              ListTile(
                title: Text(
                  'Liked posts',
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
                  MaterialPageRoute(builder: (context) => QRCode()),
                ),
                title: Text(
                  'My QR code',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.black12,
              ),
              ListTile(
                title: Text(
                  'Language',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  'English',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
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
                  MaterialPageRoute(builder: (context) => EnterPassCode()),
                ),
                title: Text(
                  'Change phone number',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.black12,
              ),
              ListTile(
                title: Text(
                  'Change password',
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
                  MaterialPageRoute(builder: (context) => newNumber()),
                ),
                title: Text(
                  'Deactivate account',
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
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
