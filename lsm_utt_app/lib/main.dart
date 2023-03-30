import 'package:flutter/material.dart';
import 'package:lsm_utt_app/screens/home_page_screen.dart';
import 'package:lsm_utt_app/screens/login_page.dart';
import 'package:lsm_utt_app/screens/search_place_screen.dart';
import 'package:lsm_utt_app/screens/travels.dart';
// import 'package:firebase_core/firebase_core.dart';
//import 'package:mongo_dart/mongo_dart.dart';

void main() {
  //async
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePageScreen(),
      },
    );
  }
}
