import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Map',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            ListTile(
                title: Text(
                  'Always show my location',
                  style: TextStyle(color: Colors.amber[800]),
                ),
                trailing: Switch(
                  onChanged: (bool value) {},
                  value: true,
                )),
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
    );
  }
}
