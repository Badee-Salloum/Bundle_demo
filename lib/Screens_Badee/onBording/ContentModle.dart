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
        fit: BoxFit.fitWidth,
      ),
    ),
    decoration: PageDecoration(
      imageFlex: 2,
    ),
  ),
  PageViewModel(
    title: 'Media messages',
    body: 'send and recieve photos and videos with same quailty',
    image: Center(
      child: SvgPicture.asset(
        'assets/Photos/Trip-cuate.svg',
        fit: BoxFit.fitWidth,
      ),
    ),
    decoration: PageDecoration(
      imageFlex: 2,
    ),
  ),
  PageViewModel(
    title: 'Media messages',
    body: 'send and recieve photos and videos with same quailty',
    image: Center(
      child: SvgPicture.asset(
        'assets/Photos/Sent Message-pana.svg',
        fit: BoxFit.fitWidth,
      ),
    ),
    decoration: PageDecoration(
      imageFlex: 2,
    ),
  ),
];
