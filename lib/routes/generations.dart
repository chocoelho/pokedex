import 'package:flutter/material.dart';

class PokedexGenerations extends StatelessWidget {
  const PokedexGenerations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generations')
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go back Home'),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      )
    );
  }
}
