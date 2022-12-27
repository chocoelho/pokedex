import 'package:flutter/material.dart';
import 'package:pokedex/routes/home.dart';
import 'package:pokedex/constants.dart' as constants;

void main() {
  runApp(const PokedexApp());
}

class PokedexApp extends StatelessWidget {
  const PokedexApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PokedexHome(), title: constants.appName);
  }
}
