import 'package:flutter/material.dart';
import 'package:pokedex/routes/home.dart';
import 'package:pokedex/constants.dart' as constants;

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home(), title: constants.appName);
  }
}
