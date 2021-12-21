// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

import '../my_flutter_app_icons.dart';

class QRCode extends StatefulWidget {
  const QRCode({Key? key}) : super(key: key);

  @override
  _QRCodeState createState() => _QRCodeState();
}

Color pick(String val) {
  switch (val) {
    case 'purple':
      return Color(0xff9676FF);
    case 'orange':
      return Colors.orange;
    case 'green':
      return Colors.green;
    case 'pink':
      return Colors.pink;
    case 'lpink':
      return Colors.pinkAccent;
    case 'blue':
      return Colors.blue;
    case 'lblue':
      return Colors.blueAccent;
    case 'grey':
      return Colors.blueGrey;
  }
  return Color(0xff9676FF);
}

String col = 'purble';

class _QRCodeState extends State<QRCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: DropdownButton(
          value: col,
          items: [
            DropdownMenuItem(
              child: Text('Purble'),
              value: 'purble',
            ),
            DropdownMenuItem(
              child: Text('Orange'),
              value: 'orange',
            ),
            DropdownMenuItem(
              child: Text('Green'),
              value: 'green',
            ),
            DropdownMenuItem(
              child: Text('Pink'),
              value: 'pink',
            ),
            DropdownMenuItem(
              child: Text('Light Pink'),
              value: 'lpink',
            ),
            DropdownMenuItem(
              child: Text('Blue'),
              value: 'blue',
            ),
            DropdownMenuItem(
              child: Text('Light Blue'),
              value: 'lblue',
            ),
            DropdownMenuItem(
              child: Text('Grey Blue'),
              value: 'grey',
            ),
          ],
          onChanged: (v) {
            setState(() {
              col = v.toString();
            });
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircularProfileAvatar(
            '',
            child: Image.asset(
              'assets/Photos/img.png',
              fit: BoxFit.fill,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Omar Rafaat'),
              SvgPicture.asset(
                'assets/Icons/Verify.svg',
                color: pick(col),
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
          Text(
            '@omar',
            style: TextStyle(color: Colors.black26),
          ),
          SizedBox(
            height: 20,
          ),
          PrettyQr(
            elementColor: pick(col),
            data: 'http://www.google.com',
            image: AssetImage('assets/Photos/bundle_logo.png'),
            size: 200,
            roundEdges: true,
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.share,
                    size: 30,
                    color: pick(col),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Share',
                    style: TextStyle(
                      fontSize: 25,
                      color: pick(col),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    MyFlutterApp.download,
                    size: 30,
                    color: pick(col),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
