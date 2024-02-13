import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:okazawa/mar.dart';
import 'package:okazawa/src/model/app_state.dart'; 
import 'login_or_register_page.dart';
import 'package:provider/provider.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user is logged in
          if (snapshot.hasData) {
            Provider.of<AppState>(context, listen: false);
            // return const HomePage();
            return const Mar();
          }
          // user is NOT logged in
          else {
            return const LoginOrRegisterPage();
            // return const HomePage();
          }
        },
      ),
    );
  }
}
