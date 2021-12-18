// ignore_for_file: prefer_const_constructors, file_names

import 'package:bundle_demo/translations/locale_keys.g.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

List<PageViewModel> pages = [
  PageViewModel(
    title: //'Media messages',
        LocaleKeys.B01onBoarding_messages.tr(),
    body: //'send and recieve photos and videos with same quailty',
        LocaleKeys.B01onBoarding_send.tr(),
    image: Expanded(
      child: SvgPicture.asset(
        'assets/Photos/Sent Message-pana.svg',
        fit: BoxFit.fitWidth,
      ),
    ),
    decoration: PageDecoration(
      imageFlex: 2,
    ),
  ),
  PageViewModel(
    title: //'Explore Places',
        LocaleKeys.B01onBoarding_explore.tr(),
    body:
        //'Discover & Select amazing places and arrive safely to your destination is our first priority',
        LocaleKeys.B01onBoarding_discover.tr(),
    image: Expanded(
      child: SvgPicture.asset(
        'assets/Photos/Journey-amico.svg',
        fit: BoxFit.fitWidth,
      ),
    ),
    decoration: PageDecoration(
      imageFlex: 2,
    ),
  ),
  PageViewModel(
    title: //'Privacy Protection',
        LocaleKeys.B01onBoarding_privacy.tr(),
    body: //'All your data and messages are encrypted and safe',
        LocaleKeys.B01onBoarding_data.tr(),
    image: Expanded(
      child: SvgPicture.asset(
        'assets/Photos/Private data-amico.svg',
        fit: BoxFit.fitWidth,
      ),
    ),
    decoration: PageDecoration(
      imageFlex: 2,
    ),
  ),
];
