import 'package:bundle_demo/Auth%20System/signUp/widgets.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class ViewProfile extends StatefulWidget {
  const ViewProfile({Key? key}) : super(key: key);

  @override
  _ViewProfileState createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  final TextEditingController _phoneController = TextEditingController();

  String Name = 'Name';
  String Username = 'Username';
  String Bio = 'Bio...';
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
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.red,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 5,
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
                    buildTextField(Icons.account_circle, Name),
                    buildTextField(Icons.account_circle_outlined, Username),
                    buildTextField(Icons.account_circle, Bio),
                    buildTextField(Icons.account_circle_outlined, Location),
                    buildTextField(Icons.account_circle, Website),
                    buildTextField(Icons.account_circle_outlined, Instagram),
                    buildTextField(Icons.account_circle, Name),
                    buildTextField(Icons.account_circle_outlined, Twitter),
                    buildTextField(Icons.account_circle, Tiktok),
                    buildTextField(Icons.account_circle_outlined, Youtube),
                    buildTextField(Icons.account_circle, Date),
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
                    MaterialButton(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      height: 51.0,
                      minWidth: 300.0,
                      color: Color(0xff9676FF),
                      child: Text('Save',
                          style:
                              TextStyle(fontSize: 16.0, color: Colors.white)),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
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
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
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
        ));
  }
}
