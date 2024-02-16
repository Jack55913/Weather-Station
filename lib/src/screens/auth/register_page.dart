// ignore_for_file: use_build_context_synchronously, unused_field

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:okazawa/src/model/auth/google_signin.dart';
import 'package:okazawa/src/model/constants.dart';
import 'package:okazawa/src/util/widgets/onboarding/onboarding_advise.dart';
import 'package:okazawa/src/util/components/my_button.dart';
import 'package:okazawa/src/util/components/my_textfield.dart';
import 'package:okazawa/src/util/widgets/square_tile.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:okazawa/src/util/widgets/errors/alerts.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool _isLoggedIn = false;
  Map _userObj = {};

  // sign user up method
  void signUserUp() async {
    // Provider.of<AppState>(context, listen: false).setOnboardingStatus(true);
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try creating the user
    try {
      // check if password is confirmed
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
      } else {
        // show error message, passwords don't match
        showErrorMessage("¡No coinciden las contraseñas!");
      }
      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);
      // show error message
      showErrorMessage(e.code);
    }
  }

  // error message to user
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).colorScheme.background,
          title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 25),

                // logo
                Image.asset(
                  'assets/images/logo.png',
                  width: 120,
                ),

                const SizedBox(height: 25),

                // let's create an account for you
                Text(
                  'アカウントを作りましょう 😊',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                // email textfield
                MyTextField(
                  controller: emailController,
                  hintText: 'メール',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'パスワード',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                // confirm password textfield
                MyTextField(
                  controller: confirmPasswordController,
                  hintText: 'パスワード再入力',
                  obscureText: true,
                ),

                const SizedBox(height: 25),

                // sign in button
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: MyButton(
                    text: "ユーザー登録",
                    onTap: signUserUp,
                  ),
                ),

                const SizedBox(height: 50),

                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Divider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'または続行してください',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      const Expanded(
                        child: Divider(),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 50),

                // google + apple sign in buttons
                SingleChildScrollView(
                  padding: const EdgeInsets.all(15),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // google button
                      SquareTile(
                        imagePath: 'assets/images/google.png',
                        signType: () {
                          final provider = Provider.of<GoogleSignInProvider>(
                              context,
                              listen: false);
                          provider.googleLogin();
                        },
                      ),

                      const SizedBox(width: 25),

                      // apple button
                      SquareTile(
                        imagePath: 'assets/images/apple.png',
                        signType: () {
                          // alertLogIn;
                        },
                      ),

                      const SizedBox(width: 25),

                      // apple button
                      SquareTile(
                        imagePath: 'assets/images/facebook.png',
                        signType: () async {
                          FacebookAuth.instance.login(permissions: [
                            "public_profile",
                            "email"
                          ]).then((value) {
                            FacebookAuth.instance
                                .getUserData()
                                .then((userData) async {
                              setState(() {
                                _isLoggedIn = true;
                                _userObj = userData;
                              });
                            });
                          });
                        },
                      ),

                      const SizedBox(width: 25),

                      // apple button
                      SquareTile(
                        imagePath: 'assets/images/twitter.png',
                        signType: () {
                          // alertLogIn;
                        },
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 50),

                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'すでにアカウントをお持ちですか？',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    Bounceable(
                      onTap: () {},
                      child: GestureDetector(
                        onTap: widget.onTap,
                        child: Text(
                          'ログイン',
                          style: TextStyle(
                            color: yokohamagreen,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const OnboardingAdvise(),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
