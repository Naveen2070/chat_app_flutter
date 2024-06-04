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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDbjhPXmuqxvudHu4Ek0G3vMDnr0DcJ554',
    appId: '1:256659894461:android:ba29c2281b49b7d6a4c7d4',
    messagingSenderId: '256659894461',
    projectId: 'grocery-list-flutter-50e9c',
    databaseURL: 'https://grocery-list-flutter-50e9c-default-rtdb.firebaseio.com',
    storageBucket: 'grocery-list-flutter-50e9c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDf8AG8fmsppubAhU8ldsLuK39MVXhnD10',
    appId: '1:256659894461:ios:e7b64f0a5d4c79dba4c7d4',
    messagingSenderId: '256659894461',
    projectId: 'grocery-list-flutter-50e9c',
    databaseURL: 'https://grocery-list-flutter-50e9c-default-rtdb.firebaseio.com',
    storageBucket: 'grocery-list-flutter-50e9c.appspot.com',
    iosBundleId: 'com.example.chatAppFlutter',
  );
}