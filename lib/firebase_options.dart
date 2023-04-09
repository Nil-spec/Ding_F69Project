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
    apiKey: 'AIzaSyDFzKrrIxtS2f_VdXcEtJqGIyldqFl24K0',
    appId: '1:758028942830:web:489aea4e3e00ec644ea2ff',
    messagingSenderId: '758028942830',
    projectId: 'calismalogin03',
    authDomain: 'calismalogin03.firebaseapp.com',
    storageBucket: 'calismalogin03.appspot.com',
    measurementId: 'G-Y6QXXTYENK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDYaYXaG3jEDQ7Mvxwnno3Tb7Qs7OdBTuw',
    appId: '1:758028942830:android:feb4cbf7af88fee74ea2ff',
    messagingSenderId: '758028942830',
    projectId: 'calismalogin03',
    storageBucket: 'calismalogin03.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD8zxzPyVCEcXz5AcQzWy3QhzI0PO91U9I',
    appId: '1:758028942830:ios:dde0fd99c12a45454ea2ff',
    messagingSenderId: '758028942830',
    projectId: 'calismalogin03',
    storageBucket: 'calismalogin03.appspot.com',
    iosClientId: '758028942830-v0ktncn8l7hhmust4b29lrnbgvp56n0q.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterUi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD8zxzPyVCEcXz5AcQzWy3QhzI0PO91U9I',
    appId: '1:758028942830:ios:c026b8762b7022c44ea2ff',
    messagingSenderId: '758028942830',
    projectId: 'calismalogin03',
    storageBucket: 'calismalogin03.appspot.com',
    iosClientId: '758028942830-io5e24v96240qg04vvva1pvhlriro7sj.apps.googleusercontent.com',
    iosBundleId: 'com.example.calismaLogin2',
  );
}
