// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:okazawa/mar.dart';
import 'package:okazawa/src/screens/auth/auth_page.dart';

class LogOut extends StatelessWidget {
  const LogOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              return const Mar();
            } else if (snapshot.hasError) {
              return Center(child: Text('¡Ocurrió un error!'));
            } else {
              return AuthPage();
            }
          },
        ),
      );
}
