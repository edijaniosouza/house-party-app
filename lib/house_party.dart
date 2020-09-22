import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:house_party/pages/home/home_page.dart';
import 'package:house_party/pages/login/login_page.dart';

class HouseParty extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _HousePartyState createState() => _HousePartyState();
}

class _HousePartyState extends State<HouseParty> {
  bool _firebaseInitialized = false;
  bool _firebaseError = false;

  // Define an async function to initialize FlutterFire
  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _firebaseInitialized = true;
      });
    } catch(e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _firebaseError = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if(_firebaseError) {
      return ErrorWidget(_firebaseError);
    }
    return MaterialApp(
      title: 'House Party',

      // Nomeia rotas
      routes: {
        '/' : (context) => HomePage(),
        '/login': (context) => LoginPage(),
        // '/cadastro' : (context) => ,
      }
    );
  }
}