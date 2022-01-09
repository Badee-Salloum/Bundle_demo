import 'package:bundle_demo/Folder02/setting_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../icomoon_icons.dart';

class LoginInfoScreen extends StatefulWidget {
  const LoginInfoScreen({Key? key}) : super(key: key);

  @override
  _LoginInfoScreenState createState() => _LoginInfoScreenState();
}

class _LoginInfoScreenState extends State<LoginInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              "Login info",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SettingScreen()));
              },
              icon: Icon(
                Icomoon.Logout,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: ListView(
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.fill,
                      image: AssetImage('assets/Photos/Traffic night.jpg'),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, bottom: 20, right: 20),
                    child: Container(
                      padding: EdgeInsets.only(left: 60),
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(30, 166, 166, 166),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Damascus',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text('1 day ago',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text('huawei nova 4',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: MaterialButton(
                      enableFeedback: false,
                      disabledColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      height: 60.0,
                      minWidth: 100.0,
                      color: Color(0xff9676FF),
                      child: Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {}),
                  bottom: 40,
                  right: 30,
                ),
                Positioned(
                  child: Icon(Icomoon.location_outline,
                      color: Colors.white, size: 40),
                  bottom: 50,
                  left: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
