// import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:okazawa/src/util/widgets/actions.dart';

// IMAGES IN THE HOME SCREEN

List<Map> paintings = [
  {
    'image': 'assets/images/painting6.jpeg',
    'name': 'The Sower',
  },
  {
    'image': 'assets/images/painting2.jpg',
    'name': 'The Starry Night',
  },
  {
    'image': 'assets/images/painting3.jpg',
    'name': 'The Potato Eaters',
  },
  {
    'image': 'assets/images/painting4.jpg',
    'name': 'Irises',
  },
  {
    'image': 'assets/images/painting5.jpg',
    'name': 'Starry Night Over the Rhône',
  },
  {
    'image': 'assets/images/painting7.jpg',
    'name': 'Landscape with Snow',
  },
  {
    'image': 'assets/images/painting8.jpg',
    'name': 'The Night Café',
  },
];

// STRINGS:

const String appName = 'OMA';

// COLORS AND UI

var backcolor = Colors.grey[300];
var yokohamagreen = CupertinoColors.systemGreen;
var mediumgreen = const Color(0xFF014751);
var darkgreen = const Color(0xFF0F282F);
var mypink = const Color(0xFFFF90E8);
var myyellow = const Color(0xFFFFC900);
var myred = const Color(0xFFE2442F);

// var mybackgroundcolor = CupertinoColors.systemBackground;

////////////////////////////////////////////

var drawerTextColor = TextStyle(
  color: Colors.grey[600],
);

var headerwhite = const TextStyle(
  color: Colors.white,
  fontFamily: 'FredokaOne',
  fontSize: 24,
);

var headerBlack = const TextStyle(
  color: Colors.black,
  fontFamily: 'FredokaOne',
  fontSize: 24,
);

var subtitleText = TextStyle(
  fontFamily: 'Poppins',
  color: Colors.grey[600],
  fontSize: 18,
);

var myWhiteText = const TextStyle(
    fontFamily: 'Poppins',
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold);

var myBlackText = const TextStyle(
  fontFamily: 'Poppins',
  color: Colors.black,
  fontSize: 18,
  // fontWeight: FontWeight.bold
);

var myText = const TextStyle(
  fontFamily: 'Poppins',
  color: Colors.black,
  fontSize: 16,
);

// WIDGETS TO FUNCTIONS

var myActions = const FluidDialogWidget();

var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);

// ABOUT FIREBASE
FirebaseAnalytics analytics = FirebaseAnalytics.instance;
