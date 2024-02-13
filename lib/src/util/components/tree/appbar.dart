import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:okazawa/src/model/constants.dart';

var myAppBar = SliverAppBar.large(
  bottom: PreferredSize(
    preferredSize: const Size.fromHeight(4.0),
    child: Container(
      color: Colors.black,
      height: 2.0,
    ),
  ),
  title: Bounceable(
    onTap: () {},
    child: AnimatedTextKit(
      repeatForever: true,
      animatedTexts: [
        TypewriterAnimatedText(
          'OMA',
          textStyle: const TextStyle(
              fontSize: 36, color: Colors.white, fontFamily: 'FredokaOne'),
          speed: const Duration(milliseconds: 100),
          cursor: ' 🥑',
        ),
      ],
      totalRepeatCount: 1,
      pause: const Duration(milliseconds: 100),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    ),
  ),
  centerTitle: true,
  actions: [myActions],
);

var myWebAppBar = AppBar(
  bottom: PreferredSize(
    preferredSize: const Size.fromHeight(4.0),
    child: Container(
      color: Colors.black,
      height: 2.0,
    ),
  ),
  centerTitle: true,
  // backgroundColor: Theme.of(context).colorScheme.background,
  title: SizedBox(
    child: Center(
      child: AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          TypewriterAnimatedText(
            textAlign: TextAlign.center,
            'Olimpiada Mexicana de Agronomía',
            textStyle: const TextStyle(
              fontSize: 48,
              // color: Colors.black
            ),
            speed: const Duration(milliseconds: 100),
            cursor: ' 🥑',
          ),
        ],
        totalRepeatCount: 1,
        pause: const Duration(milliseconds: 100),
        displayFullTextOnTap: true,
        stopPauseOnTap: true,
      ),
    ),
  ),
  actions: [myActions],
);
