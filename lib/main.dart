import 'package:flutter/material.dart';
import 'constants.dart' as constants;

void main() {
  runApp(const PokedexApp());
}

class PokedexApp extends StatelessWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: constants.appName,
      home: Scaffold(
        appBar: AppBar(title: const Text(constants.appName)),
        body: const Center(child: Text('')),
      ),
    );
  }
}
