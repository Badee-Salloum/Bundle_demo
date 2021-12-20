// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BlockedAccounts extends StatefulWidget {
  const BlockedAccounts({Key? key}) : super(key: key);

  @override
  _BlockedAccountsState createState() => _BlockedAccountsState();
}

class _BlockedAccountsState extends State<BlockedAccounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Blocked accounts',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset('assets/Photos/No blocked accounts yet.svg'),
            SizedBox(
              height: 10,
            ),
            Text(
              'No blocked accounts yet',
              style: TextStyle(color: Colors.black26),
            ),
          ],
        ),
      ),
    );
  }
}
