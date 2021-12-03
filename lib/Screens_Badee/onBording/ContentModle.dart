// ignore_for_file: prefer_const_constructors, file_names

import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

List<PageViewModel> pages = [
  PageViewModel(
    title: 'Media messages',
    body: 'send and recieve photos and videos with same quailty',
    image: Expanded(
      child: SvgPicture.asset(
        'assets/Photos/Sent Message-pana.svg',
        fit: BoxFit.fitHeight,
      ),
    ),
    decoration: PageDecoration(
      imageFlex: 2,
    ),
  ),
  PageViewModel(
    title: 'Explore Places',
    body:
        'Discover & Select amazing places and arrive safely to your destination is our first priority',
    image: Expanded(
      child: SvgPicture.asset(
        'assets/Photos/Journey-amico.svg',
        fit: BoxFit.fitHeight,
      ),
    ),
    decoration: PageDecoration(
      imageFlex: 2,
    ),
  ),
  PageViewModel(
    title: 'Privacy Protection',
    body: 'All your data and messages are encrypted and safe',
    image: Expanded(
      child: SvgPicture.asset(
        'assets/Photos/Private data-amico.svg',
        fit: BoxFit.fitHeight,
      ),
    ),
    decoration: PageDecoration(
      imageFlex: 2,
    ),
  ),
];
