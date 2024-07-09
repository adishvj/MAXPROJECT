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
    apiKey: 'AIzaSyD_pGBC2-Ie1svEO7ANmmsvXtg7NaIJzAE',
    appId: '1:931626313713:web:89f58a7056dc7d6ef38650',
    messagingSenderId: '931626313713',
    projectId: 'demofire1-ca889',
    authDomain: 'demofire1-ca889.firebaseapp.com',
    storageBucket: 'demofire1-ca889.appspot.com',
    measurementId: 'G-FK6P3QGW6Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAG27__3VL1xpyu6aasYmlvSmWOhj7MNBo',
    appId: '1:931626313713:android:18c76fba0f5f51edf38650',
    messagingSenderId: '931626313713',
    projectId: 'demofire1-ca889',
    storageBucket: 'demofire1-ca889.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAHchwwLuFrZmcZCJG5KEVAdhAu1pcKAYA',
    appId: '1:931626313713:ios:fd77ca284e655735f38650',
    messagingSenderId: '931626313713',
    projectId: 'demofire1-ca889',
    storageBucket: 'demofire1-ca889.appspot.com',
    iosBundleId: 'com.example.maxProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAHchwwLuFrZmcZCJG5KEVAdhAu1pcKAYA',
    appId: '1:931626313713:ios:fd77ca284e655735f38650',
    messagingSenderId: '931626313713',
    projectId: 'demofire1-ca889',
    storageBucket: 'demofire1-ca889.appspot.com',
    iosBundleId: 'com.example.maxProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD_pGBC2-Ie1svEO7ANmmsvXtg7NaIJzAE',
    appId: '1:931626313713:web:7ed5dec03cccb38cf38650',
    messagingSenderId: '931626313713',
    projectId: 'demofire1-ca889',
    authDomain: 'demofire1-ca889.firebaseapp.com',
    storageBucket: 'demofire1-ca889.appspot.com',
    measurementId: 'G-0NL4NZP7P3',
  );
}
