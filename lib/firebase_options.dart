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
    apiKey: 'AIzaSyBxBD-HmeyHDkmlLIiLRfwDu0f7J8sEL1I',
    appId: '1:204621702625:web:13c3f1159c70bc67dcdea0',
    messagingSenderId: '204621702625',
    projectId: 'appventoryrotativos',
    authDomain: 'appventoryrotativos.firebaseapp.com',
    storageBucket: 'appventoryrotativos.appspot.com',
    measurementId: 'G-3QW7M1TYRC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAhf1DKICdDrBOTcvNNFg_PJClSr-f7RMg',
    appId: '1:204621702625:android:a88d4a4f3864bcb1dcdea0',
    messagingSenderId: '204621702625',
    projectId: 'appventoryrotativos',
    storageBucket: 'appventoryrotativos.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAsYNdE0OyhlkX_KRXBP6p4UVI2Q254UXE',
    appId: '1:204621702625:ios:f786bdd58b91aba7dcdea0',
    messagingSenderId: '204621702625',
    projectId: 'appventoryrotativos',
    storageBucket: 'appventoryrotativos.appspot.com',
    iosClientId: '204621702625-q8bl3de0qn2lrqu2ik36b6eek2g3qluj.apps.googleusercontent.com',
    iosBundleId: 'com.example.aplicacion',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAsYNdE0OyhlkX_KRXBP6p4UVI2Q254UXE',
    appId: '1:204621702625:ios:f786bdd58b91aba7dcdea0',
    messagingSenderId: '204621702625',
    projectId: 'appventoryrotativos',
    storageBucket: 'appventoryrotativos.appspot.com',
    iosClientId: '204621702625-q8bl3de0qn2lrqu2ik36b6eek2g3qluj.apps.googleusercontent.com',
    iosBundleId: 'com.example.aplicacion',
  );
}
