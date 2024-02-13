import 'package:flutter/material.dart';
import 'package:okazawa/mar.dart';
import 'package:okazawa/src/model/auth/google_signin.dart';
import 'package:okazawa/src/model/constants.dart';
import 'package:okazawa/src/screens/auth/auth_page.dart';
import 'package:okazawa/src/util/widgets/user_profile.dart';
import 'package:provider/provider.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool _isLoggedIn = false;
  Map _userObj = {};
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Builder(builder: (context) {
        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const DrawerHeader(
                    child: ProfilePhotoWidget(),
                  ),
                  Padding(
                    padding: tilePadding,
                    child: ListTile(
                      leading: const Icon(Icons.energy_savings_leaf),
                      title: Text(
                        'Revista Zea Mays',
                        style: drawerTextColor,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Mar()),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: tilePadding,
                    child: ListTile(
                      leading: const Icon(Icons.menu_book_rounded),
                      title: Text(
                        'Plan de estudios',
                        style: drawerTextColor,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Mar()),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: tilePadding,
                    child: ListTile(
                      leading: const Icon(Icons.school),
                      title: Text(
                        'Lineamientos',
                        style: drawerTextColor,
                      ),
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const DocumentScreen()),
                        // );
                      },
                    ),
                  ),
                  Padding(
                    padding: tilePadding,
                    child: ListTile(
                      leading: const Icon(Icons.photo_album),
                      title: Text(
                        'Fotogalería',
                        style: drawerTextColor,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Mar()),
                        );
                      },
                    ),
                  ),
                ],
              ),

              Padding(
                  padding: tilePadding,
                  child:
                      // Consumer<UserAccount>(builder: (context, signIn, child) {
                      // return
                      ListTile(
                    leading: const Icon(Icons.logout),
                    title: Text(
                      'Cerrar Sesión',
                      style: drawerTextColor,
                    ),
                    onTap: () {
                      final account = Provider.of<GoogleSignInProvider>(context,
                          listen: false);
                      account.logout();
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute<void>(
                              builder: (BuildContext context) {
                        return const AuthPage();
                      }), (Route<dynamic> route) => false);
                      FacebookAuth.instance.logOut().then((value) {
                        setState(
                          () {
                            _isLoggedIn = false;
                            _userObj = {};
                          },
                        );
                      });
                    },
                  )
                  // }
                  ),
              // ),
            ],
          ),
        );
      }),
    );
  }
}
