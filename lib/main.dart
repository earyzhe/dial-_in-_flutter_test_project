import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'pages/log_in.dart';
import 'app_theme.dart';
import 'pages/sign_up.dart';
import 'custom_widgets.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';




final FirebaseApp firebaseApp = FirebaseApp(name: 'FireBaseDialin');
final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn _googleSignIn = GoogleSignIn();




void main() {
  // _testSignInWithGoogle();
  // debugPaintSizeEnabled = true;
  runApp(new MyApp());
}

  // Future<String> _testSignInWithGoogle() async {
  //   final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
  //   final GoogleSignInAuthentication googleAuth =
  //       await googleUser.authentication;
  //   final FirebaseUser user = await _auth.signInWithGoogle(
  //     accessToken: googleAuth.accessToken,
  //     idToken: googleAuth.idToken,
  //   );
  //   assert(user.email != null);
  //   assert(user.displayName != null);
  //   assert(!user.isAnonymous);
  //   assert(await user.getIdToken() != null);

  //   final FirebaseUser currentUser = await _auth.currentUser();
  //   assert(user.uid == currentUser.uid);

  //   print('This user is signed in $user');

  //   return 'signInWithGoogle succeeded: $user';
  // }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: buildThemeData(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),

      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/': return new MyCustomRoute(
            builder: (_) => new MyHomePage(),
            settings: settings,
          );
          case '/signup': return new MyCustomRoute(
            builder: (_) => new SignUpPage(),
            settings: settings,
          );
        }
        assert(false);
      }
    );
  }
}

