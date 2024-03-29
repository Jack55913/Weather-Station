// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDtkYaY1OaMxt60LxiHmJoPnz15Sr9j9tY',
    appId: '1:426828972528:web:9f72cf49a221432a1cdd35',
    messagingSenderId: '426828972528',
    projectId: 'raspberry-2d7fc',
    authDomain: 'raspberry-2d7fc.firebaseapp.com',
    storageBucket: 'raspberry-2d7fc.appspot.com',
    measurementId: 'G-9V3MTB25FZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDDydQumWM7NnhYZdy89vx9etDnOSw6oYw',
    appId: '1:426828972528:android:c1ac8d84290466e51cdd35',
    messagingSenderId: '426828972528',
    projectId: 'raspberry-2d7fc',
    storageBucket: 'raspberry-2d7fc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCnx8BsEZ8wQoHrug2r9IU8jFtUoRyWJ2M',
    appId: '1:426828972528:ios:f27f9670cbc551c01cdd35',
    messagingSenderId: '426828972528',
    projectId: 'raspberry-2d7fc',
    storageBucket: 'raspberry-2d7fc.appspot.com',
    iosBundleId: 'com.example.okazawa',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCnx8BsEZ8wQoHrug2r9IU8jFtUoRyWJ2M',
    appId: '1:426828972528:ios:44520e19324a2d381cdd35',
    messagingSenderId: '426828972528',
    projectId: 'raspberry-2d7fc',
    storageBucket: 'raspberry-2d7fc.appspot.com',
    iosBundleId: 'com.example.okazawa.RunnerTests',
  );
}
