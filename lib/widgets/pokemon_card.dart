import 'package:flutter/material.dart';
import 'package:pokedexflutter/models/pokemon_llist_response_model.dart';
import 'package:pokedexflutter/widgets/custom_image.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;
  const PokemonCard(this.pokemon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Center(
              child: Text(
                _capitalizeString(pokemon.name!),
              ),
            ),
          ),
          CustomImage(image: pokemon.image!),
        ],
      ),
    );
  }

  String _capitalizeString(String text) {
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }
}
