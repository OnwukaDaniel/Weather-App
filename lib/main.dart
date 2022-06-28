import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnx/pages/ChooseLocation.dart';
import 'package:learnx/pages/TimePage.dart';
import 'package:learnx/pages/Loading.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/loading',
      routes: {
        '/': (context) => Loading(),
        '/TimePage': (context) => TimePage(),
        '/loading': (context) => Loading(),
        '/ChooseLocation': (context) => ChooseLocation(),
      },
    ),
  );
}
