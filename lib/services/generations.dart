import 'package:pokeapi/model/game/generation.dart';
import 'package:pokeapi/pokeapi.dart';
import 'package:pokedex/models/generations.dart';

Future<List<dynamic>> fetchGenerationsList() async {
  return await PokeAPI.getObjectList<Generation>(1, 9);
}

Future<PokedexGeneration> fetchGeneration() async {
  return PokeAPI.getObject<Generation>(1)
      .then((generation) => PokedexGeneration(id: generation?.id, name: generation?.name));
}
