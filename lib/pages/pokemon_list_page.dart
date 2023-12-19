import 'package:flutter/material.dart';
import 'package:pokedexflutter/models/pokemon_llist_response_model.dart';
import 'package:pokedexflutter/services/pokedex_service.dart';
import 'package:pokedexflutter/widgets/pokemon_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: PokedexService().getPokemonsList(),
        initialData: const [],
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          List<Pokemon> pokemons = snapshot.data;
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 4,
            ),
            itemCount: pokemons.length,
            itemBuilder: (BuildContext context, int index) {
              return PokemonCard(pokemons[index]);
            },
          );
        });
  }
}
