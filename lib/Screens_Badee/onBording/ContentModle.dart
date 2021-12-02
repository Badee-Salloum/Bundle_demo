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
        height: 250,
        width: 250,
        fit: BoxFit.fitWidth,
      ),
    ),
    decoration: PageDecoration(
      imagePadding: EdgeInsets.zero,
      contentMargin: EdgeInsets.zero,
      fullScreen: true,
      imageFlex: 2,
    ),
  ),
  PageViewModel(
    title: 'Media messages',
    body: 'send and recieve photos and videos with same quailty',
    image: Center(
      child: SvgPicture.asset(
        'assets/Photos/Trip-cuate.svg',
        height: 150,
      ),
    ),
  ),
  PageViewModel(
    title: 'Media messages',
    body: 'send and recieve photos and videos with same quailty',
    image: Center(
      child: Image.asset(
        'assets/Photos/Sent Message-pana.svg',
        height: 150,
      ),
    ),
  ),
];
