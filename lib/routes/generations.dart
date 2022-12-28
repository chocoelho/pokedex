import 'package:flutter/material.dart';
import 'package:pokedex/constants.dart' as constants;
import 'package:pokedex/models/generations.dart';
import 'package:pokedex/services/generations.dart';

class PokedexGenerations extends StatelessWidget {
  const PokedexGenerations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Future<List<PokedexGeneration>> pokedexGenerations = fetchGenerationsList();
    return Scaffold(
      appBar: AppBar(title: const Text(constants.generationsRouteName)),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 8,
                child: FutureBuilder<List<PokedexGeneration>>(
                  future: pokedexGenerations,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) return Text('${snapshot.error}');
                    return snapshot.hasData
                        ? ListView.builder(
                            itemCount: snapshot.data?.length,
                            itemBuilder: (context, index) => Card(
                              child: Text('${snapshot.data?[index].name}'),
                            ),
                          )
                        : CircularProgressIndicator();
                  },
                ),
              ),
              Expanded(
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
      ),
    );
  }
}
