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
      apiKey: "AIzaSyD3lMrCCqv8xI0s0Q6kgfySY35RTu8Bseg",
      authDomain: "fcmweb-5368f.firebaseapp.com",
      projectId: "fcmweb-5368f",
      storageBucket: "fcmweb-5368f.appspot.com",
      messagingSenderId: "34522456568",
      appId: "1:34522456568:web:2eef055ca6ae8f5c89f60d",
      measurementId: "G-36SNYEVRR7");

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDfzJdz47v17M-g_jiI9yTMVmD1OUOVWSw',
    appId: '1:500327925220:android:ab494834a9da97b61c73f1',
    messagingSenderId: '500327925220',
    projectId: 'keeplist-4b3e3',
    storageBucket: 'keeplist-4b3e3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCNhjr6L4uvmqqhtYLHZ-slciyX4p2CXSo',
    appId: '1:500327925220:ios:147e07f8f9cc3b9b1c73f1',
    messagingSenderId: '500327925220',
    projectId: 'keeplist-4b3e3',
    storageBucket: 'keeplist-4b3e3.appspot.com',
    androidClientId:
        '500327925220-l3np8tvtcneai75jll4rsjoe91g38m7m.apps.googleusercontent.com',
    iosClientId:
        '500327925220-umc0u04h1e3rbi1ikl3oku2cglbk8950.apps.googleusercontent.com',
    iosBundleId: 'com.example.keeplist',
  );
}
