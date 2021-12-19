import 'package:bundle_demo/Auth%20System/signUp/widgets.dart';
import 'package:bundle_demo/translations/locale_keys.g.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class currentNumber extends StatefulWidget {
  const currentNumber({Key? key}) : super(key: key);

  @override
  State<currentNumber> createState() => _currentNumberState();
}

final TextEditingController _currentController = TextEditingController();

class _currentNumberState extends State<currentNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change phone number'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/Photos/Change phone number.svg'),
            Text(
              'Enter current phone number',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(
              height: 15,
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
                          var countryCode = value.toString();
                        },
                      ),
                    ],
                  ),
                ),
              ),
              hideInput: false,
              keyboardType: TextInputType.phone,
              con: _currentController,
              hintText: //'Phone number',
                  LocaleKeys.B03signUpScreen_number.tr(),
            ),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              height: 51.0,
              minWidth: 300.0,
              color: Color(0xff9676FF),
              child: Text('Continue',
                  style: TextStyle(fontSize: 16.0, color: Colors.white)),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
