import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Module.dart';

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
        leading: BackButton(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Map",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Always show my location',
              ),
              trailing: Switch(
                onChanged: (bool value) {},
                value: true,
              ),
            ),
            ListTile(
              title: Text(
                'Show countries locations',
              ),
              trailing: Switch(
                onChanged: (bool value) {},
                value: true,
              ),
            ),
            ListTile(
              title: Text(
                'Auto map mode',
              ),
              trailing: Switch(
                onChanged: (bool value) {},
                value: true,
              ),
            ),
            ListTile(
              title: Text(
                'Change map style',
              ),
            ),
            ListTile(
              title: Text(
                'Saved locations',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
