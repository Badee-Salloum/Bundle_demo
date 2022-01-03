import 'package:detectable_text_field/detector/sample_regular_expressions.dart';
import 'package:detectable_text_field/widgets/detectable_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlScreen extends StatefulWidget {
  // const SettingScreen({Key? key}) : super(key: key);
  late final String _url;
  void _launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  @override
  _UrlScreenState createState() => _UrlScreenState();
}

class _UrlScreenState extends State<UrlScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DetectableText(
        trimLines: 1,
        colorClickableText: Colors.pink,
        trimMode: TrimMode.Line,
        trimCollapsedText: 'more',
        trimExpandedText: '...less',
        text:
            "Welcome to #Detectable @TextField http://www.google.com this is sample text we are texting the feed text here. Welcome to #Detectable @TextField this is sample text we are texting the feed text here",
        detectionRegExp: RegExp(
          "(?!\\n)(?:^|\\s)([#@]([$detectionContentLetters]+))|$urlRegexContent",
          multiLine: true,
        ),
        callback: (bool readMore) {
          debugPrint('Read more >>>>>>> $readMore');
        },
        onTap: (tappedText) async {
          print(tappedText);
          if (tappedText.startsWith('#')) {
            debugPrint('DetectableText >>>>>>> #');
          } else if (tappedText.startsWith('@')) {
            debugPrint('DetectableText >>>>>>> @');
          } else if (tappedText.startsWith('http')) {
            debugPrint('DetectableText >>>>>>> http');
          }
        },
        basicStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
        detectedStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
