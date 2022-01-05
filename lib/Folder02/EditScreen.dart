import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../icomoon_icons.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String Name = 'Full Name';
  String Username = 'UserName';
  String Bio = 'Bio';
  String Location = 'Location';
  String Website = 'Website';
  String Instagram = 'Instagram';
  String Twitter = 'Twitter';
  String Tiktok = 'Tiktok';
  String Youtube = 'Youtube';
  String Date = 'DD-MM-YY';
  String countryCode = "+964";
  TextEditingController _nameController = TextEditingController();
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _bioController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _websiteController = TextEditingController();
  TextEditingController _instagramController = TextEditingController();
  TextEditingController _tiktokController = TextEditingController();
  TextEditingController _youtubeController = TextEditingController();
  TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200.0,
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo32Cq1Iy8yGw4-My0hPt5ch4GtCQcw3J9Yg&usqp=CAU',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            child: Container(
                height: height,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      buildTextField(Icomoon.name, Name, _nameController),
                      SizedBox(
                        height: 20.0,
                      ),
                      buildTextField(
                          Icomoon.account, Username, _userNameController),
                      SizedBox(
                        height: 20.0,
                      ),
                      buildTextField(Icomoon.bio, Bio, _bioController),
                      SizedBox(
                        height: 20.0,
                      ),
                      buildTextField(Icomoon.location_outline, Location,
                          _locationController),
                      SizedBox(
                        height: 20.0,
                      ),
                      buildTextField(
                          Icomoon.capture, Website, _websiteController),
                      SizedBox(
                        height: 20.0,
                      ),
                      buildTextField(
                          Icomoon.instagram, Instagram, _instagramController),
                      SizedBox(
                        height: 20.0,
                      ),
                      buildTextField(Icomoon.tiktok, Tiktok, _tiktokController),
                      SizedBox(
                        height: 20.0,
                      ),
                      buildTextField(
                          Icomoon.youtube, Youtube, _youtubeController),
                      SizedBox(
                        height: 20.0,
                      ),
                      buildTextField(Icons.account_circle_outlined, Youtube,
                          _youtubeController),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        controller:
                            _dateController, //editing con// troller of this TextField
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xff9676FF), width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          hintText: 'YYYY-MM-DD',
                          prefixIcon: Icon(
                            Icons.calendar_today,
                            color: Color(0xff9676FF),
                          ),
                        ),

                        readOnly:
                            true, //set it true, so that user will not able to edit text
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(
                                  2000), //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2101));

                          if (pickedDate != null) {
                            print(
                                pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                            String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                            print(
                                formattedDate); //formatted date output using intl package =>  2021-03-16
                            //you can implement different kind of Date Format here according to your requirement

                            setState(() {
                              _dateController.text =
                                  formattedDate; //set output date to TextField value.
                            });
                          } else {
                            print("Date is not selected");
                          }
                        },
                      ),
                      SizedBox(
                        height: 200.0,
                      ),
                    ],
                  ),
                )),
            right: 0,
            left: 0,
            top: 175,
          ),
          Positioned(
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            left: 5,
            top: 15,
          ),
          Positioned(
            child: IconButton(
              icon: Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            right: 5,
            top: 15,
          ),
          Positioned(
            child: CircularProfileAvatar(
              '',
              child: Image(
                image: AssetImage('assets/Photos/omar.jpg'),
                fit: BoxFit.fill,
              ),
              borderColor: Colors.transparent,
              borderWidth: 0.0,
              elevation: 0.0,
              radius: 45,
            ),
            right: 0,
            left: 0,
            top: 130,
          ),
          Container(
            height: height,
          ),
        ],
      ),
    );
  }

  TextField buildTextField(IconData data, String s, TextEditingController con) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      controller: con,
      onChanged: (value) {
        //Do something with the user input.
        setState(() {
          s = value;
        });
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff9676FF), width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        hintText: s,
        prefixIcon: Icon(
          data,
          color: Color(0xff9676FF),
        ),
      ),
    );
  }
}
