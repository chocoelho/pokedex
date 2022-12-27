import 'package:flutter/material.dart';
import 'package:pokedex/constants.dart' as constants;
import 'package:pokedex/routes/generations.dart';

class PokedexHome extends StatelessWidget {
  const PokedexHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: constants.appName,
      home: Scaffold(
        appBar: AppBar(title: const Text(constants.appName)),
        body: Center(child: ElevatedButton(
          child: const Text('Generations'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PokedexGenerations())
            );
          },
        )),
      ),
    );
  }
}