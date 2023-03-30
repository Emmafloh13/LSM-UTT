import 'package:flutter/material.dart';
import 'package:lsm_utt_app/screens/travels.dart';

class SearchPlaceScreen extends StatelessWidget {
  const SearchPlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Busqueda Page'),
      ),
      body: Center(
        child: Text('busqueda'),
      ),
    );
  }
}
