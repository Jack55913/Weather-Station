import 'package:flutter/material.dart';

class Mar extends StatefulWidget {
  const Mar({super.key});

  @override
  State<Mar> createState() => _MarState();
}

class _MarState extends State<Mar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.equalizer)
        ],
      ),
      body: Container(
        color: Colors.blue,
        child: const Text(
          'Hola'
        ),
      ),
    );
  }
}