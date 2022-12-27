import 'package:flutter/material.dart';
import 'package:pokedex/constants.dart' as constants;
import 'package:pokedex/serializers/generations.dart';
import 'package:pokedex/services/generations.dart';

class PokedexGenerations extends StatelessWidget {
  const PokedexGenerations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Future<PokedexGeneration> pokedexGeneration = fetchGeneration();
    return Scaffold(
      appBar: AppBar(title: const Text(constants.generationsRouteName)),
      body: Center(
        child: ListView(
          children: [
            Center(
              child: FutureBuilder<PokedexGeneration>(
                future: pokedexGeneration,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data!.name?? '');
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                  return const CircularProgressIndicator();
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                child: const Text('Go back Home'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
