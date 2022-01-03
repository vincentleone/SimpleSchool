// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCcu2xGuRrBXdN92dGbuIfau_ala1ewVIw',
    appId: '1:9503370418:web:fdc7fe34877796f2076dab',
    messagingSenderId: '9503370418',
    projectId: 'simpleschool-3e48f',
    authDomain: 'simpleschool-3e48f.firebaseapp.com',
    storageBucket: 'simpleschool-3e48f.appspot.com',
    measurementId: 'G-EKQKFTK75T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC56x6dulHzx1YibybqPKKpGTB0IUqGbFw',
    appId: '1:9503370418:android:8b25d9aebc51e21c076dab',
    messagingSenderId: '9503370418',
    projectId: 'simpleschool-3e48f',
    storageBucket: 'simpleschool-3e48f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBK7fgze55VrLW3d_RBCAKoVDz3U8VMl3w',
    appId: '1:9503370418:ios:c0e04ce59969149a076dab',
    messagingSenderId: '9503370418',
    projectId: 'simpleschool-3e48f',
    storageBucket: 'simpleschool-3e48f.appspot.com',
    iosClientId: '9503370418-tf96ne65nfbqfk1h2o98igifn9aqfpsq.apps.googleusercontent.com',
    iosBundleId: 'com.example.com',
  );
}
