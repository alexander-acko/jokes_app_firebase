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
    apiKey: 'AIzaSyApPzLxEd6BSWkzz2zIGQKdY2VN20gpfuk',
    appId: '1:991727066547:web:bdf28ff2173b028a683fc6',
    messagingSenderId: '991727066547',
    projectId: 'jokes-app-75702',
    authDomain: 'jokes-app-75702.firebaseapp.com',
    storageBucket: 'jokes-app-75702.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB9SvyGr0_G_V8fG5amFuBYFGIt1KCjgI4',
    appId: '1:991727066547:android:ef4ad394dd0747e8683fc6',
    messagingSenderId: '991727066547',
    projectId: 'jokes-app-75702',
    storageBucket: 'jokes-app-75702.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDLDfy6YZX4s6RzaNeKKKgLDk4qTmBxlLo',
    appId: '1:991727066547:ios:1155787df245a625683fc6',
    messagingSenderId: '991727066547',
    projectId: 'jokes-app-75702',
    storageBucket: 'jokes-app-75702.firebasestorage.app',
    iosBundleId: 'com.example.jokesAppFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDLDfy6YZX4s6RzaNeKKKgLDk4qTmBxlLo',
    appId: '1:991727066547:ios:1155787df245a625683fc6',
    messagingSenderId: '991727066547',
    projectId: 'jokes-app-75702',
    storageBucket: 'jokes-app-75702.firebasestorage.app',
    iosBundleId: 'com.example.jokesAppFirebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyApPzLxEd6BSWkzz2zIGQKdY2VN20gpfuk',
    appId: '1:991727066547:web:58458e7242bb5416683fc6',
    messagingSenderId: '991727066547',
    projectId: 'jokes-app-75702',
    authDomain: 'jokes-app-75702.firebaseapp.com',
    storageBucket: 'jokes-app-75702.firebasestorage.app',
  );

}