import 'dart:convert';
import 'dart:io';

import 'package:bundle_demo/Folder02/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';

class ReportProblem extends StatefulWidget {
  const ReportProblem({Key? key}) : super(key: key);

  @override
  _ReportProblemState createState() => _ReportProblemState();
}

class _ReportProblemState extends State<ReportProblem> {
  final ImagePicker _picker = ImagePicker();
  File? image;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  late String wrong = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: wrong == ''
            ? Text(
                "Report a problem",
                style: TextStyle(color: Colors.black),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Report a problem",
                    style: TextStyle(color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () async {
                      Response res = await post(
                        Uri.parse(
                            'http://www.alkatsha.com/api/user/problem/store'),
                        headers: <String, String>{
                          'Content-Type': 'application/json; charset=UTF-8',
                        },
                        body: jsonEncode(<String, String>{
                          'description': wrong,
                          'problemimage[]': image.toString(),
                        }),
                      );
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingScreen()));
                    },
                    child: Text(
                      'Send',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff9676FF),
                      ),
                    ),
                  )
                ],
              ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/Photos/Report a problem.svg',
                fit: BoxFit.fitWidth,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50.0,
                    ),
                    Text(
                      "You can ask a question or report a problem and we will review it as soon as possible ",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: buildTextField(),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 300.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          image != null
                              ? Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                      child: Image.file(
                                        image!,
                                        height: 290,
                                        width: 180,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Positioned(
                                      child: IconButton(
                                        color: Colors.black12,
                                        icon: Icon(
                                          Icons.delete_outline,
                                          color: Colors.black54,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            image = null;
                                          });
                                        },
                                      ),
                                      left: 0,
                                      right: 0,
                                      top: 120,
                                    )
                                  ],
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30.0)),
                                  ),
                                  height: 260,
                                  width: 180,
                                  child: Center(
                                    child: IconButton(
                                      color: Color(0xff9676FF),
                                      icon: Icon(
                                        Icons.add,
                                        color: Colors.black,
                                      ),
                                      onPressed: pickImage,
                                    ),
                                  ),
                                ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  TextField buildTextField() {
    return TextField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          //Do something with the user input.
          setState(() {
            wrong = value;
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
          hintText: 'What went wrong?',
          prefixIcon: Icon(
            Icons.warning,
            color: Color(0xff9676FF),
          ),
        ));
  }
}
