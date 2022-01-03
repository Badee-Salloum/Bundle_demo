// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SavedPlaces extends StatefulWidget {
  const SavedPlaces({Key? key}) : super(key: key);

  @override
  _SavedPlacesState createState() => _SavedPlacesState();
}

class _SavedPlacesState extends State<SavedPlaces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Text(
          'Saved places',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/Photos/No saved places yet.svg'),
            SizedBox(
              height: 10,
            ),
            Text(
              'No Saved posts yet',
              style: TextStyle(color: Colors.black26),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
