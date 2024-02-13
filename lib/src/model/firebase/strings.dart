// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:okazawa/src/model/app_state.dart';
import 'package:provider/provider.dart';
import 'package:auto_size_text/auto_size_text.dart';

Widget omaEliminatory = Consumer<AppState>(
  builder: (context, state, _) => FutureBuilder<Map<String, dynamic>>(
    future: state.getCurrentData(),
    builder: (context, snapshot) {
      late String text;
      if (snapshot.hasError) {
        text = snapshot.error.toString();
      } else if (snapshot.hasData) {
        text =
            '${snapshot.data?['Fecha Eliminatoria']}\n${snapshot.data?['Horario']}';
      } else {
        text = '4 de Noviembre de 2023\na las 9:00 Hrs';
      }
      return SelectableText(
        text,
        textAlign: TextAlign.right,
        style: const TextStyle(
          fontSize: 18,
          fontFamily: 'poppins',
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      );
    },
  ),
);

Widget omaEliminatory2 = Consumer<AppState>(
  builder: (context, state, _) => FutureBuilder<Map<String, dynamic>>(
    future: state.getCurrentData(),
    builder: (context, snapshot) {
      late String text;
      if (snapshot.hasError) {
        text = snapshot.error.toString();
      } else if (snapshot.hasData) {
        text =
            '${snapshot.data?['Fecha Eliminatoria']}\n${snapshot.data?['Horario']}';
      } else {
        text = 'Sábado 4 Noviembre 2023\na las 9:00 Hrs';
      }
      return SelectableText(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontFamily: 'Poppins',
        ),
      );
    },
  ),
);

Widget omaFinal = Consumer<AppState>(
  builder: (context, state, _) => FutureBuilder<Map<String, dynamic>>(
    future: state.getCurrentData(),
    builder: (context, snapshot) {
      late String text;
      if (snapshot.hasError) {
        text = snapshot.error.toString();
      } else if (snapshot.hasData) {
        text = '${snapshot.data?['Fecha Final']}\n${snapshot.data?['Horario']}';
      } else {
        text = 'Sábado 17 Febrero 2023\na las 9:00 Hrs';
      }
      return SelectableText(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontFamily: 'poppins',
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      );
    },
  ),
);

////////////////////////////////////////////

Widget omaEdition = Consumer<AppState>(
  builder: (context, state, _) => FutureBuilder<Map<String, dynamic>>(
    future: state.getCurrentData(),
    builder: (context, snapshot) {
      late String text;
      if (snapshot.hasError) {
        text = snapshot.error.toString();
      } else if (snapshot.hasData) {
        text = snapshot.data?['Edición'] ?? 'X Edición';
      } else {
        text = 'Primera Edición';
      }
      return AutoSizeText(
        text,
        style: const TextStyle(
          fontSize: 24,
          letterSpacing: 5.0,
          wordSpacing: 10.0,
          fontFamily: 'poppins',
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      );
    },
  ),
);
