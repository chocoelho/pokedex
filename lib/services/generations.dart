import 'package:pokeapi/model/game/generation.dart';
import 'package:pokeapi/pokeapi.dart';
import 'package:pokedex/models/generations.dart';

Future<List<PokedexGeneration>> fetchGenerationsList() async {
  return PokeAPI.getObjectList<Generation>(1, 9).then((generations) => generations
      .map((generation) => PokedexGeneration(id: generation?.id, name: generation?.name))
      .toList());
}

Future<PokedexGeneration> fetchGeneration() async {
  return PokeAPI.getObject<Generation>(1)
      .then((generation) => PokedexGeneration(id: generation?.id, name: generation?.name));
}
