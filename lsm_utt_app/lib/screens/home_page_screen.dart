import 'package:flutter/material.dart';
import 'package:lsm_utt_app/screens/travels.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Center(
          child: Text('This is the home page'),
        ),
        bottomNavigationBar: Travels());
  }
}
