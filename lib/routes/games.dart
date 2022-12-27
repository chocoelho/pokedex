import 'package:flutter/material.dart';
import 'package:pokedex/constants.dart' as constants;

class PokedexGames extends StatelessWidget {
  const PokedexGames({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(constants.gamesRouteName)),
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
