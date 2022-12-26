import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokédex',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const PokedexHome(title: 'Pokédex'),
    );
  }
}

class PokedexHome extends StatefulWidget {
  const PokedexHome({super.key, required this.title});
  final String title;

  @override
  State<PokedexHome> createState() => _PokedexHomeState();
}

class _PokedexHomeState extends State<PokedexHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}
