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
    apiKey: 'AIzaSyAN87oK_sDMfUaf-tTb3I3h3-vPtx8yxE8',
    appId: '1:805374031557:android:acdbb03e90740527ce62ac',
    messagingSenderId: '805374031557',
    projectId: 'eden-life-task-6fffb',
    storageBucket: 'eden-life-task-6fffb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCmwsHDAWFcU9zfbFALxx6pKmawM44iToE',
    appId: '1:805374031557:ios:54332aba85c2cf49ce62ac',
    messagingSenderId: '805374031557',
    projectId: 'eden-life-task-6fffb',
    storageBucket: 'eden-life-task-6fffb.appspot.com',
    androidClientId: '805374031557-j6t8epspmn6vlse9mt02qkl3k0obu7eq.apps.googleusercontent.com',
    iosClientId: '805374031557-462ergg5heoobga4pe6htcnlilcm3val.apps.googleusercontent.com',
    iosBundleId: 'com.example.edenLifeTask',
  );
}
