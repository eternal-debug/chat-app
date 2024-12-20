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
    apiKey: 'AIzaSyAoUHZAxUUE0gGzvi4djwEbHLcmHabWWxo',
    appId: '1:96019121366:web:bedee724a72b25d535f577',
    messagingSenderId: '96019121366',
    projectId: 'chat-app-f1384',
    authDomain: 'chat-app-f1384.firebaseapp.com',
    storageBucket: 'chat-app-f1384.firebasestorage.app',
    measurementId: 'G-W3EJ7PEM82',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCRB2ez6Xogv79RdLSANrKQzDUjPrlKBko',
    appId: '1:96019121366:android:77e288b9aee940a435f577',
    messagingSenderId: '96019121366',
    projectId: 'chat-app-f1384',
    storageBucket: 'chat-app-f1384.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDhpCeZ3-t5GKHQo2Ow9i7lc76mqlcUKIU',
    appId: '1:96019121366:ios:28a0711f4e66267935f577',
    messagingSenderId: '96019121366',
    projectId: 'chat-app-f1384',
    storageBucket: 'chat-app-f1384.firebasestorage.app',
    iosBundleId: 'com.rosieanna.chatapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDhpCeZ3-t5GKHQo2Ow9i7lc76mqlcUKIU',
    appId: '1:96019121366:ios:cd7aad914740e30a35f577',
    messagingSenderId: '96019121366',
    projectId: 'chat-app-f1384',
    storageBucket: 'chat-app-f1384.firebasestorage.app',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAoUHZAxUUE0gGzvi4djwEbHLcmHabWWxo',
    appId: '1:96019121366:web:515438a4bd2132d935f577',
    messagingSenderId: '96019121366',
    projectId: 'chat-app-f1384',
    authDomain: 'chat-app-f1384.firebaseapp.com',
    storageBucket: 'chat-app-f1384.firebasestorage.app',
    measurementId: 'G-MTLX0D2RES',
  );
}
