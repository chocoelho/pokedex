import 'package:flutter/material.dart';
import 'package:pokedex/constants.dart' as constants;

class PokedexGenerations extends StatelessWidget {
  const PokedexGenerations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(constants.generationsRouteName)),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go back Home'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
