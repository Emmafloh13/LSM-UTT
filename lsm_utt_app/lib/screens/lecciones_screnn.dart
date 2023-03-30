import 'package:flutter/material.dart';

class LectionScreen extends StatelessWidget {
  const LectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lección'),
      ),
      body: Container(
        child: Column(
          children: [
            // Agregar icono de lección
            Icon(Icons.book, size: 50),
            // Agregar otros iconos de lecciones
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.lightbulb_outline, size: 30),
                Icon(Icons.brush, size: 30),
                Icon(Icons.music_note, size: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
