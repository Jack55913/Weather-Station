import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:okazawa/app.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Para las suscricpiones TODO: HACER QUE FUNCIONE ESTO
  // await PurchaseApi.init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // Quita el # de la url
  setPathUrlStrategy();
  runApp(const MyApp());
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
}