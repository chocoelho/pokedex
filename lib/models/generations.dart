class PokedexGeneration {
  final int? id;
  final String? name;

  const PokedexGeneration({required this.id, required this.name});

  factory PokedexGeneration.fromJson(Map<String, dynamic> json) {
    return PokedexGeneration(id: json['id'], name: json['name']);
  }
}