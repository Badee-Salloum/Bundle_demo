import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SavedProfiles extends StatefulWidget {
  const SavedProfiles({Key? key}) : super(key: key);

  @override
  _SavedProfilesState createState() => _SavedProfilesState();
}

class _SavedProfilesState extends State<SavedProfiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Saved profiles',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/Photos/No saved profiles yet.svg'),
            SizedBox(
              height: 10,
            ),
            Text(
              'No Saved profiles yet',
              style: TextStyle(color: Colors.black26),
            ),
          ],
        ),
      ),
    );
  }
}
