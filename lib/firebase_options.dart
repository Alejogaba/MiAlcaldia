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
    apiKey: 'AIzaSyC7vrKjZsLKSQJQErQ4zgJuIllFRyIOaUk',
    appId: '1:1063866205906:android:c854c1d99a1c51d5790f0b',
    messagingSenderId: '1063866205906',
    projectId: 'betaalcaldia',
    storageBucket: 'betaalcaldia.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAuGzvVwk-SRvgYsUNKg6Y_UQjWTV7NJ1A',
    appId: '1:1063866205906:ios:4f22a06720d99664790f0b',
    messagingSenderId: '1063866205906',
    projectId: 'betaalcaldia',
    storageBucket: 'betaalcaldia.appspot.com',
    androidClientId: '1063866205906-4qmbm30foks2fr1j21edok2no67d9evr.apps.googleusercontent.com',
    iosClientId: '1063866205906-nhbpij52u1bsi98d7o2djkt7gucn4a6j.apps.googleusercontent.com',
    iosBundleId: 'com.example.carrito',
  );
}
