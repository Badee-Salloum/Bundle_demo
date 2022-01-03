// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:io';
import 'package:bundle_demo/translations/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'Auth System/splash_screen.dart';
import 'Folder02/setting_screen.dart';

Future<void> main() async {
  String deviceLanguage = Platform.localeName.substring(0, 2);
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      path: 'assets/languages',
      supportedLocales: [
        Locale('en'),
        Locale('es'),
      ],
      fallbackLocale: Locale(deviceLanguage),
      assetLoader: CodegenLoader(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
