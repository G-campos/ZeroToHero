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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD5hY2dvnvJD5hddp-8SFb9w_Vobaruk8k',
    appId: '1:308291991252:web:3b62de69d86786e8fa2d41',
    messagingSenderId: '308291991252',
    projectId: 'campos-zero-to-hero',
    authDomain: 'campos-zero-to-hero.firebaseapp.com',
    storageBucket: 'campos-zero-to-hero.appspot.com',
    measurementId: 'G-MST8BZHLZ4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDdZ0tBJ2CnMvJjvPRKRO4gHY4mkTF0xHs',
    appId: '1:308291991252:android:7748c90e4290026dfa2d41',
    messagingSenderId: '308291991252',
    projectId: 'campos-zero-to-hero',
    storageBucket: 'campos-zero-to-hero.appspot.com',
  );
}
