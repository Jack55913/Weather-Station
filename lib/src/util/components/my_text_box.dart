import 'package:flutter/material.dart';

class MyTextBox extends StatelessWidget {
  const MyTextBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          // borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: const [Text('Hola')],
          ),
        ),
      ),
    );
  }
}
