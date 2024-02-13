import 'package:flutter/material.dart';
import 'package:okazawa/src/model/constants.dart'; 

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  // COLORS
  // colorScheme: ColorScheme.light(
  //   background: Colors.grey[300]!,
  //   primary: Colors.grey[200]!,
  //   secondary: Colors.grey[300]!
  // ),
  splashColor: yokohamagreen,
  primaryTextTheme: Typography.blackCupertino,
  useMaterial3: true,
  colorSchemeSeed: yokohamagreen,
  scaffoldBackgroundColor: backcolor,
  // dialogBackgroundColor: Theme.of(context).colorScheme.background,
  disabledColor: Colors.white,
  dividerTheme: DividerThemeData(
    color: Colors.grey[500],
    thickness: 0.5,
    space: 10,
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  // Buttons
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
  ),
  // FONTS
  fontFamily: 'Poppins',
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'FredokaOne',
      fontSize: 24,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 18,
    ),
  ),
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
  }),

  tabBarTheme: TabBarTheme(
    labelColor: Colors.white,
    unselectedLabelColor: Colors.grey[800],
  ),
  // APPBAR
  appBarTheme: AppBarTheme(
    color: yokohamagreen,
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    titleTextStyle: const TextStyle(
        fontSize: 20.0, color: Colors.white, fontFamily: 'FredokaOne'),
  ),
  // DRAWER
  drawerTheme: DrawerThemeData(
    backgroundColor: backcolor,
  ),
  // BUTTON BELLOW
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    enableFeedback: true,
    mouseCursor: MaterialStateMouseCursor.clickable,
    splashColor: Colors.blue,
    backgroundColor: yokohamagreen,
    elevation: 0.01,
    hoverColor: Colors.blue,
    hoverElevation: 50,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
    ),
    highlightElevation: 1,
  ),
);
