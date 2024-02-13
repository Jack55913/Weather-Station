import 'package:flutter/material.dart';

ButtonStyle get helperOutlineBtnStyle => OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
        padding: const EdgeInsets.all(12),
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        side: const BorderSide(
          width: 1.0,
          style: BorderStyle.solid,
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      );
