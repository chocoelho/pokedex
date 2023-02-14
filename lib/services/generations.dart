import 'package:pokeapi/model/game/generation.dart';
import 'package:pokeapi/pokeapi.dart';

Future<List<Generation>> fetchGenerationsList() {
  return PokeAPI.getObjectList<Generation>(1, 9).then((generations) => generations
      .map((generation) => Generation(id: generation?.id, name: generation?.name))
      .toList());
}

Future<Generation> fetchGeneration() {
  return PokeAPI.getObject<Generation>(1)
      .then((generation) => Generation(id: generation?.id, name: generation?.name));
}
