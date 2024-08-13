// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAlPLhDbfVIF0JNCQpjtuYYgpQ0E20jOng',
    appId: '1:885160095978:web:98b46dcc8bc9df4ac62793',
    messagingSenderId: '885160095978',
    projectId: 'onlinebusiness-30107',
    authDomain: 'onlinebusiness-30107.firebaseapp.com',
    storageBucket: 'onlinebusiness-30107.appspot.com',
    measurementId: 'G-MLEX47SJNE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD8dJZzjwXxTe_tFRLoxxGG_j8kcvvHPAE',
    appId: '1:885160095978:android:717b2875f29108abc62793',
    messagingSenderId: '885160095978',
    projectId: 'onlinebusiness-30107',
    storageBucket: 'onlinebusiness-30107.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDa_UN-kxQ4JMr4c0MlIvt7xh8T1hkqwyg',
    appId: '1:885160095978:ios:e0e355000dbf3f13c62793',
    messagingSenderId: '885160095978',
    projectId: 'onlinebusiness-30107',
    storageBucket: 'onlinebusiness-30107.appspot.com',
    iosBundleId: 'com.example.onlineBusiness',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDa_UN-kxQ4JMr4c0MlIvt7xh8T1hkqwyg',
    appId: '1:885160095978:ios:e0e355000dbf3f13c62793',
    messagingSenderId: '885160095978',
    projectId: 'onlinebusiness-30107',
    storageBucket: 'onlinebusiness-30107.appspot.com',
    iosBundleId: 'com.example.onlineBusiness',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAlPLhDbfVIF0JNCQpjtuYYgpQ0E20jOng',
    appId: '1:885160095978:web:5ecbe287c0298039c62793',
    messagingSenderId: '885160095978',
    projectId: 'onlinebusiness-30107',
    authDomain: 'onlinebusiness-30107.firebaseapp.com',
    storageBucket: 'onlinebusiness-30107.appspot.com',
    measurementId: 'G-W93XSGDB41',
  );
}
