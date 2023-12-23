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
    apiKey: 'AIzaSyArh1wLL5cRkuBJBmbwx-AB5m3a2XTMm6g',
    appId: '1:28609037409:web:8257a36bd87caf755ad620',
    messagingSenderId: '28609037409',
    projectId: 'diabetic-eye-app',
    authDomain: 'diabetic-eye-app.firebaseapp.com',
    storageBucket: 'diabetic-eye-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDp8rg3dvkqG_Q-adhj1H2-hlhsllpmLkg',
    appId: '1:28609037409:android:64ac7e454308343d5ad620',
    messagingSenderId: '28609037409',
    projectId: 'diabetic-eye-app',
    storageBucket: 'diabetic-eye-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAIJKovL6w9SoLt2jWOVJQQF_ZHaMfbC7s',
    appId: '1:28609037409:ios:89dbf38a34a214585ad620',
    messagingSenderId: '28609037409',
    projectId: 'diabetic-eye-app',
    storageBucket: 'diabetic-eye-app.appspot.com',
    iosBundleId: 'com.example.diabeticEyeApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAIJKovL6w9SoLt2jWOVJQQF_ZHaMfbC7s',
    appId: '1:28609037409:ios:b56eec45f37511cd5ad620',
    messagingSenderId: '28609037409',
    projectId: 'diabetic-eye-app',
    storageBucket: 'diabetic-eye-app.appspot.com',
    iosBundleId: 'com.example.diabeticEyeApp.RunnerTests',
  );
}