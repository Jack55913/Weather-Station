import 'package:flutter/material.dart';
import 'package:okazawa/mar.dart';
import 'package:okazawa/src/model/app_state.dart';
import 'package:okazawa/src/model/auth/google_signin.dart';
import 'package:okazawa/src/model/constants.dart';
import 'package:okazawa/src/model/theme/dark.dart';
import 'package:okazawa/src/model/theme/light.dart'; 
import 'package:provider/provider.dart';
import 'package:firebase_analytics/observer.dart'; 
import 'package:quick_actions/quick_actions.dart';

import 'src/screens/auth/auth_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final quickActions = const QuickActions();

// Botón de rápido acceso desde el fondo de pantalla
  @override
  void initState() {
    super.initState();
    quickActions.setShortcutItems(
      [
        const ShortcutItem(
            type: 'ticket', localizedTitle: 'Ver Gráfica', icon: 'equalizer'),
        const ShortcutItem(
            type: 'Revista', localizedTitle: 'Obtener Datos ', icon: 'book')
      ],
    );
    quickActions.initialize((type) {
      if (type == 'ticket') {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Mar()));
      } else if (type == 'Revista') {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Mar()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppState>(create: (context) => AppState()),
        ChangeNotifierProvider(create: (context) => GoogleSignInProvider()),
      ],
      child: ChangeNotifierProvider<AppState>(
        create: (context) => AppState(),
        child: Consumer(
          builder: (context, settings, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            title: appName,
            navigatorObservers: [
              FirebaseAnalyticsObserver(analytics: analytics),
            ],
            // ESTO ES LO PRIMERO QUE EJECUTA EL CÓDIGO:
            // home: const AuthPage(),
            home: const Mar(),
            routes: {
              '/home': (context) => const Mar(),
            },
          ),
        ),
      ),
    );
  }
}
