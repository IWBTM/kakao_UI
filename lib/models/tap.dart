import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tap {
  final IconData icon;
  final String text;

  Tap({required this.icon, required this.text});
}

List<Tap> taps = [
  Tap(icon: FontAwesomeIcons.envelope, text: '메일'),
  Tap(icon: FontAwesomeIcons.calendar, text: '캘린더'),
  Tap(icon: FontAwesomeIcons.angellist, text: '서랍'),
  Tap(icon: FontAwesomeIcons.accessibleIcon, text: '선물하기'),
  Tap(icon: FontAwesomeIcons.temperatureArrowUp, text: '이모티콘'),
  Tap(icon: FontAwesomeIcons.wandMagic, text: '쇼핑하기'),
  Tap(icon: FontAwesomeIcons.truckFast, text: '스타일'),
];
