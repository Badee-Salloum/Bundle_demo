import 'package:bundle_demo/Auth%20System/signUp/widgets.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../icomoon_icons.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController _phoneController = TextEditingController();

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
                      buildTextField(Icomoon.name, Name),
                      SizedBox(
                        height: 20.0,
                      ),
                      buildTextField(Icomoon.account, Username),
                      SizedBox(
                        height: 20.0,
                      ),
                      buildTextField(Icomoon.bio, Bio),
                      SizedBox(
                        height: 20.0,
                      ),
                      buildTextField(Icomoon.location_outline, Location),
                      SizedBox(
                        height: 20.0,
                      ),
                      buildTextField(Icomoon.capture, Website),
                      SizedBox(
                        height: 20.0,
                      ),
                      buildTextField(Icomoon.instagram, Instagram),
                      SizedBox(
                        height: 20.0,
                      ),
                      buildTextField(Icomoon.tiktok, Tiktok),
                      SizedBox(
                        height: 20.0,
                      ),
                      buildTextField(Icomoon.youtube, Youtube),
                      SizedBox(
                        height: 20.0,
                      ),
                      buildTextField(Icons.account_circle_outlined, Youtube),
                      SizedBox(
                        height: 20.0,
                      ),
                      buildTextField(Icons.account_circle, Date),
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
              onPressed: () {},
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

  TextField buildTextField(IconData data, String s) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
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
/*

CustomScrollView(
       slivers: [
         SliverFillRemaining(
           hasScrollBody: false,
           child: Container(
             color: Colors.red,
             height: double.infinity,
             child: Column(
               children: [
                 Container(
                   width: double.infinity,
                   height: 150.0,
                   child: Image.network(
                     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo32Cq1Iy8yGw4-My0hPt5ch4GtCQcw3J9Yg&usqp=CAU',
                     fit: BoxFit.fitWidth,
                   ),
                 ),
                 Expanded(
                   child: Container(
                     height: double.infinity,
                     padding: EdgeInsets.symmetric(horizontal: 20.0),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.only(
                         topRight: Radius.circular(30.0),
                         topLeft: Radius.circular(30.0),
                       ),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         SizedBox(
                           height: 40.0,
                         ),
                         buildTextField(Icomoon.name, Name),
                         SizedBox(
                           height: 20.0,
                         ),
                         buildTextField(Icomoon.account, Username),
                         SizedBox(
                           height: 20.0,
                         ),
                         buildTextField(Icomoon.bio, Bio),
                         SizedBox(
                           height: 20.0,
                         ),
                         buildTextField(Icomoon.location_outline, Location),
                         SizedBox(
                           height: 20.0,
                         ),
                         buildTextField(Icomoon.capture, Website),
                         SizedBox(
                           height: 20.0,
                         ),
                         buildTextField(Icomoon.instagram, Instagram),
                         SizedBox(
                           height: 20.0,
                         ),
                         buildTextField(Icomoon.tiktok, Tiktok),
                         SizedBox(
                           height: 20.0,
                         ),
                         buildTextField(Icomoon.youtube, Youtube),
                         SizedBox(
                           height: 20.0,
                         ),
                         buildTextField(
                             Icons.account_circle_outlined, Youtube),
                         SizedBox(
                           height: 20.0,
                         ),
                         buildTextField(Icons.account_circle, Date),
                         SizedBox(
                           height: 20.0,
                         ),
                         TextField_SignUp(
                           prefix: Expanded(
                             child: SizedBox(
                               width: 150,
                               child: Row(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(left: 10),
                                     child: Icon(
                                       Icons.phone,
                                       color: Color(0xff9676FF),
                                     ),
                                   ),
                                   CountryCodePicker(
                                     initialSelection: 'IQ',
                                     onChanged: (value) {
                                       countryCode = value.toString();
                                     },
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           hideInput: false,
                           keyboardType: TextInputType.phone,
                           con: _phoneController,
                           hintText: '7501999946',
                         ),
                         SizedBox(
                           height: 20.0,
                         ),
                         MaterialButton(
                           elevation: 0,
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(30.0)),
                           height: 51.0,
                           minWidth: double.infinity,
                           color: Color(0xff9676FF),
                           child: Text('Save',
                               style: TextStyle(
                                   fontSize: 16.0, color: Colors.white)),
                           onPressed: () {},
                         )
                       ],
                     ),
                   ),
                 ),
               ],
             ),
           ),
         )
       ],
     ),

*/
