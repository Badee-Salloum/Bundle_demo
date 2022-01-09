import 'package:bundle_demo/Folder02/setting_screen.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MapStylerScreen extends StatefulWidget {
  @override
  _MapStylerScreenState createState() => _MapStylerScreenState();
}

class _MapStylerScreenState extends State<MapStylerScreen> {
  int selectedMap = 0;
  void beforeInit() async {
    SharedPreferences SavedPrefs = await SharedPreferences.getInstance();

    setState(() {
      selectedMap = SavedPrefs.getInt('selectedMap')!;
    });
  }

  @override
  void initState() {
    super.initState();
    beforeInit();
  }

  @override
  Widget build(BuildContext context) {
    double itemHeight =
        (MediaQuery.of(context).size.height - kToolbarHeight) / 2;
    double itemWidth = MediaQuery.of(context).size.width / 2;
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
                "Chosse map style",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SettingScreen()));
                },
                icon: Icon(
                  Icons.check,
                  color: Color(0xff9676FF),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            crossAxisCount: 2,
            childAspectRatio: (itemWidth / itemHeight),
            children: <Widget>[
              Column(
                children: [
                  Text(
                    'Traffic night',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          SharedPreferences SavedPrefs =
                              await SharedPreferences.getInstance();

                          setState(() {
                            SavedPrefs.setInt('selectedMap', 0);
                            selectedMap = SavedPrefs.getInt('selectedMap')!;
                          });
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            height: itemHeight / 2 + 65,
                            fit: BoxFit.fill,
                            image:
                                AssetImage('assets/Photos/Traffic night.jpg'),
                          ),
                        ),
                      ),
                      Positioned(
                        child: Icon(
                          Icons.check_circle,
                          color: selectedMap == 0
                              ? Color(0xff9676FF)
                              : Colors.transparent,
                        ),
                        bottom: 10,
                        right: 10,
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Outdoors',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          SharedPreferences SavedPrefs =
                              await SharedPreferences.getInstance();

                          setState(() {
                            SavedPrefs.setInt('selectedMap', 1);
                            selectedMap = SavedPrefs.getInt('selectedMap')!;
                          });
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            height: itemHeight / 2 + 65,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/Photos/Outdoors.jpg'),
                          ),
                        ),
                      ),
                      Positioned(
                        child: Icon(
                          Icons.check_circle,
                          color: selectedMap == 1
                              ? Color(0xff9676FF)
                              : Colors.transparent,
                        ),
                        bottom: 10,
                        right: 10,
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Light',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          SharedPreferences SavedPrefs =
                              await SharedPreferences.getInstance();

                          setState(() {
                            SavedPrefs.setInt('selectedMap', 2);
                            selectedMap = SavedPrefs.getInt('selectedMap')!;
                          });
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            height: itemHeight / 2 + 65,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/Photos/Light.jpg'),
                          ),
                        ),
                      ),
                      Positioned(
                        child: Icon(
                          Icons.check_circle,
                          color: selectedMap == 2
                              ? Color(0xff9676FF)
                              : Colors.transparent,
                        ),
                        bottom: 10,
                        right: 10,
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Satellite',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          SharedPreferences SavedPrefs =
                              await SharedPreferences.getInstance();

                          setState(() {
                            SavedPrefs.setInt('selectedMap', 3);
                            selectedMap = SavedPrefs.getInt('selectedMap')!;
                          });
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            height: itemHeight / 2 + 65,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/Photos/Satellite.jpg'),
                          ),
                        ),
                      ),
                      Positioned(
                        child: Icon(
                          Icons.check_circle,
                          color: selectedMap == 3
                              ? Color(0xff9676FF)
                              : Colors.transparent,
                        ),
                        bottom: 10,
                        right: 10,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
