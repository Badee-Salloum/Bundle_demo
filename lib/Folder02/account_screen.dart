import 'package:flutter/material.dart';
import '../Module.dart';

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
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              title: Text('Edit profile'),
            ),
            ListTile(
              title: Text('Saved profiles'),
            ),
            ListTile(
              title: Text('Saved posts'),
            ),
            ListTile(
              title: Text('Liked posts'),
            ),
            ListTile(
              title: Text('My QR code'),
            ),
            ListTile(
              title: Text('Language'),
              trailing: Text('English'),
            ),
            ListTile(
              title: Text('Change phone number'),
            ),
            ListTile(
              title: Text('Change password'),
            ),
            ListTile(
              title: Text('Deactivate account'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
