import 'package:flutter/material.dart';
import 'package:pokedex/routes/games.dart';
import 'package:pokedex/routes/generations.dart';
import 'package:pokedex/constants.dart' as constants;

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(constants.homeRouteName)),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Center(
              child: ElevatedButton(
                child: const Text(constants.generationsRouteName),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Generations()),
                  );
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                child: const Text(constants.gamesRouteName),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Games()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
