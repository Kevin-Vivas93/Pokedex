import 'package:flutter/material.dart';
import 'package:pokedexflutter/pages/pokemon_list_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Listado Pokemón'),
        ),
        body: const HomePage(),
      ),
    );
  }
}
