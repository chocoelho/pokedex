import 'package:flutter/material.dart';
import 'package:pokedex/routes/generations.dart';
import 'package:pokedex/constants.dart' as constants;

class PokedexHome extends StatelessWidget {
  const PokedexHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(constants.homeRouteName)),
      body: Center(
        child: ElevatedButton(
          child: const Text('Generations'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PokedexGenerations()),
            );
          },
        ),
      ),
    );
  }
}
